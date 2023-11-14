import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/core/secure.dart';
import 'package:frontend/domain/cart/model/cart.dart';
import 'package:frontend/infrastructure/payment/payment_dtos/payment_dto.dart';
import 'package:frontend/presentation/products/checkout/widget/address_section.dart';
import 'package:frontend/presentation/products/checkout/widget/payment_option.dart';
import 'package:frontend/presentation/products/checkout/widget/summary_section.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:intl/intl.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import '../../../domain/orders/model/orders.dart';
import '../../../domain/wallet/model/wallet.dart';
import '../../../shared/providers.dart';
import '../../../shared/user.dart';
import '../../core/widget/colors.dart';
import 'widget/products_section.dart';

class CheckoutPage extends ConsumerStatefulWidget {
  CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  String _selectedPaymentMethod = "Card";
  int calculatedTotalItemCost = 0;
  int calculatedTotalShipping = 0;

  int calculateTotalItemCost(List<Cart> cartItems) {
    int totalCost = 0;

    for (var item in cartItems) {
      totalCost += item.price * item.itemQty;
    }

    return totalCost;
  }

  int calculateShippingCost(int totalAmount) {
    if (totalAmount < 1000) {
      return 250;
    } else if (totalAmount >= 1000 && totalAmount < 5000) {
      return 300;
    } else if (totalAmount >= 5000 && totalAmount < 10000) {
      return 350;
    } else if (totalAmount >= 10000 && totalAmount < 50000) {
      return 400;
    } else if (totalAmount >= 50000) {
      return 500;
    } else {
      return 0;
    }
  }

  Map<String, int> calculateTotalItemCostAndShipping(List<Cart> cartItems) {
    int totalCost = 0;
    int totalShipping = 0;

    for (var item in cartItems) {
      int productTotal = item.price * item.itemQty;

      totalCost += productTotal;
      totalShipping += calculateShippingCost(productTotal);
    }

    return {"totalCost": totalCost, "totalShipping": totalShipping};
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(userProvider.notifier).fetchUserDetails();
    });
  }

  void initiatePayment(PaymentDto paymentDetails) {
    PayHere.startPayment(
      paymentDetails.toJson(),
      (paymentId) async {
        print("One Time Payment Success. Payment Id: $paymentId");
        final userId = getLoggedInUserId(ref);

        if (userId == null) {
          print("Error: User ID is null");
          return;
        }

        try {
          Orders order = Orders(
            userId: userId,
            paymentMethod: "PayHere",
            status: "Paid",
            amount: calculatedTotalItemCost + calculatedTotalShipping,
            paymentId: paymentId.toString(),
            statusId: 1,
          );
          print("ORDER DETAILS ***** $order");
          await ref.read(paymentProvider.notifier).createPayment(order);

          ref.read(cartProvider.notifier).deleteCartItems(order.userId);
          AutoRouter.of(context).replace(OrderSuccessRoute());
        } catch (e) {
          print("Error while saving order: $e");
        }
      },
      (error) {
        print("One Time Payment Failed. Error: $error");
      },
      () {
        print("One Time Payment Dismissed");
      },
    );
  }

  void initiateCODPayment() async {
    final userId = getLoggedInUserId(ref);
    if (userId == null) {
      print("Error: User ID is null");
      return;
    }
    try {
      Orders order = Orders(
        userId: userId,
        paymentMethod: "Cash on Delivery",
        status: "Awaiting Payment",
        amount: calculatedTotalItemCost + calculatedTotalShipping,
        paymentId: "COD-${DateTime.now().millisecondsSinceEpoch}",
        statusId: 2,
      );
      print("COD ORDER DETAILS ***** $order");
      await ref.read(paymentProvider.notifier).createPayment(order);
      ref.read(cartProvider.notifier).deleteCartItems(order.userId);
    } catch (e) {
      print("Error while saving COD order: $e");
    }
  }

  void initiateWalletPayment() async {
    final userId = getLoggedInUserId(ref);
    if (userId == null) {
      print("Error: User ID is null");
      return;
    }
    try {
      Orders order = Orders(
        userId: userId,
        paymentMethod: "Wallet",
        status: "Paid",
        amount: calculatedTotalItemCost + calculatedTotalShipping,
        paymentId: "W-${DateTime.now().millisecondsSinceEpoch}",
        statusId: 1,
      );

      Wallet wallet = Wallet(
        amount: -(calculatedTotalItemCost + calculatedTotalShipping),
      );
      print("WALLET ORDER DETAILS ***** $order");
      ref.read(walletProvider.notifier).addWalletAmount(order, wallet);
      await ref.read(paymentProvider.notifier).createPayment(order);
      ref.read(cartProvider.notifier).deleteCartItems(order.userId);
      ref.refresh(walletProvider);
      AutoRouter.of(context).replace(OrderSuccessRoute());
    } catch (e) {
      print("Error while saving WALLET order: $e");
    }
  }

  var _currentUser;
  var _cartItem;

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userProvider);
    final cartItemsState = ref.watch(cartProvider);
    final walletState = ref.watch(walletProvider);

    calculatedTotalItemCost = 0;
    calculatedTotalShipping = 0;

    cartItemsState.when(
      initial: () => {},
      actionInProgress: () => {},
      createSuccess: () => {},
      actionFailure: (_) => {},
      loaded: (cartItems) {
        _cartItem = cartItems;
        calculatedTotalItemCost = calculateTotalItemCost(_cartItem);
        Map<String, int> calculatedCostAndShipping =
            calculateTotalItemCostAndShipping(_cartItem);
        calculatedTotalItemCost = calculatedCostAndShipping["totalCost"] ?? 0;
        calculatedTotalShipping =
            calculatedCostAndShipping["totalShipping"] ?? 0;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ELMPIER Checkout"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: userState.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        actionInProgress: () => const Center(child: LinearProgressIndicator()),
        loaded: (user) {
          _currentUser = user;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddressSection(user: _currentUser),
                  const SizedBox(height: 16.0),
                  // PaymentOption(),
                  PaymentOption(
                    selectedOption: _selectedPaymentMethod,
                    onOptionSelected: (selectedOption) {
                      setState(() {
                        _selectedPaymentMethod = selectedOption;
                      });
                    },
                  ),
                  SizedBox(height: 16.0),
                  ref.watch(cartProvider).maybeWhen(
                        loaded: (cartItems) =>
                            ProductsSection(cartItems: cartItems),
                        orElse: () => Container(),
                      ),
                  SummarySection(
                    totalItemCost: calculatedTotalItemCost,
                    totalShipping: calculatedTotalShipping,
                  ),
                ],
              ),
            ),
          );
        },
        actionFailure: (f) => Center(
          child: Text(f.maybeMap(
            serverError: (_) => "Server Error",
            notFound: (_) => "User Not Found",
            orElse: () => "An error occurred.",
          )),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[300]!,
              width: 1.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 25.0, left: 24.0, right: 24.0, top: 15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    "Rs. ${NumberFormat('#,##0').format(calculatedTotalItemCost + calculatedTotalShipping)}.00",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentUser.firstName == null ||
                        _currentUser.firstName.isEmpty) {
                      FlushbarHelper.createError(
                        message: 'Please enter address!',
                      ).show(context);
                      return; // Exit the onPressed function
                    }
                    final itemName = _cartItem.first.name;

                    final amount =
                        calculatedTotalItemCost + calculatedTotalShipping;
                    if (_selectedPaymentMethod == "Card") {
                      PaymentDto paymentDetails = PaymentDto(
                        sandbox: true,
                        merchantId: SecureKeys.payhereMerchantId,
                        merchantSecret: SecureKeys.payhereMerchantSecret,
                        notifyUrl: "http://sample.com/notify",
                        orderId: "${DateTime.now().millisecondsSinceEpoch}",
                        items: "$itemName",
                        amount: amount.toDouble(),
                        currency: "LKR",
                        firstName: _currentUser.firstName,
                        lastName: _currentUser.lastName,
                        email: _currentUser.email,
                        phone: _currentUser.phone,
                        address: _currentUser.addressLine1,
                        city: _currentUser.city,
                        country: "Sri Lanka",
                        deliveryAddress: _currentUser.addressLine1,
                        deliveryCity: _currentUser.city,
                        deliveryCountry: "Sri Lanka",
                      );
                      initiatePayment(paymentDetails);
                    } else if (_selectedPaymentMethod == "Wallet") {
                      walletState.maybeWhen(
                        walletLoaded: (wallet) {
                          if (wallet.amount < amount) {
                            FlushbarHelper.createError(
                                    message:
                                        "Insufficent Wallet Balance Rs.${wallet.amount}.00, Please Top Up")
                                .show(context);
                            return;
                          } else {}
                          initiateWalletPayment();
                        },
                        orElse: () => "",
                      );
                    } else {
                      initiateCODPayment();
                      AutoRouter.of(context).replace(OrderSuccessRoute());
                    }
                  },
                  child: Text(
                    "Place order",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: customColor[900],
                    foregroundColor: customColor,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    fixedSize: const Size(double.infinity, 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

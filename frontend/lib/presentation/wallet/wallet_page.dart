import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/wallet/wallet_state.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';
import 'dart:math';

import '../../core/secure.dart';
import '../../domain/orders/model/orders.dart';
import '../../infrastructure/payment/payment_dtos/payment_dto.dart';

class WalletPage extends ConsumerStatefulWidget {
  const WalletPage({super.key});

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends ConsumerState<WalletPage> {
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _amountController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(walletProvider.notifier).getWalletAmount();
    // });
    ref.refresh(userProvider);
  }

  var _currentUser;

  Future<void> initiatePayment(PaymentDto paymentDetails) async {
    final userId = await ref.read(userIdProvider.future);

    if (userId == null) {
      print("Error: User ID is null");
      return;
    }

    PayHere.startPayment(
      paymentDetails.toJson(),
      (paymentId) async {
        // final userId = getLoggedInUserId(ref);
        print("One Time Payment Success. Payment Id: $paymentId");

        try {
          Orders order = Orders(
            userId: int.parse(userId),
            paymentMethod: "PayHere",
            status: "Paid",
            amount: int.parse(_amountController.text),
            paymentId: paymentId.toString(),
            statusId: 1,
          );

          Wallet wallet = Wallet(
            amount: int.parse(_amountController.text),
          );
          print("ORDER DETAILS ***** $order");

          ref.read(walletProvider.notifier).addWalletAmount(order, wallet);

          AutoRouter.of(context).replace(WalletSuccessRoute(wallet: wallet));
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

  @override
  Widget build(BuildContext context) {
    final walletState = ref.watch(walletProvider);
    final walletNotifier = ref.watch(walletProvider.notifier);
    final userState = ref.watch(userProvider);

    userState.when(
      actionInProgress: () => const CircularProgressIndicator(),
      initial: () => const CircularProgressIndicator(),
      actionFailure: (f) => const CircularProgressIndicator(),
      loaded: (user) {
        _currentUser = user;
      },
    );

    List<String> names = ["Haneem Mohamed"];
    final random = Random();
    String name = names[random.nextInt(names.length)];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          walletState.maybeWhen(
            walletLoaded: (wallet) => Center(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 4.0,
                child: Container(
                  width: 350.0,
                  height: 200.0,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                      // colors: [Colors.blueAccent, Colors.lightBlueAccent],
                      colors: [customColor[900]!, customColor[500]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: Image.asset(
                      //     "lib/assets/images/elmpier-logo.png",
                      //     width: 50,
                      //     height: 50,
                      //   ),
                      // ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.wifi,
                          color: Colors.white,
                          size: 24.0,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'CARDHOLDER',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'BALANCE',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
                          ),
                          Text(
                            'Rs.${wallet.amount.toString()}.00',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Text(
                      //   '1234 5678 9101 1121', // Dummy card number
                      //   style: TextStyle(color: Colors.white, fontSize: 18.0, letterSpacing: 2.0),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            orElse: () => const Text("No Amount"),
          ),
          SizedBox(
            height: 100,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                child: ListView(
                  children: [
                    TextFormField(
                      controller: _amountController,
                      decoration: const InputDecoration(
                        labelText: 'Amount',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        userState.maybeWhen(
                          loaded: (user) {
                            if (user.firstName.isEmpty) {
                              AutoRouter.of(context).replace(
                                UserProfileAddRoute(
                                  initialMessage:
                                      'Update your profile before add money on wallet!',
                                  previousPage: "WalletPage",
                                ),
                              );
                            } else {
                              PaymentDto paymentDetails = PaymentDto(
                                sandbox: true,
                                merchantId: SecureKeys.payhereMerchantId,
                                merchantSecret:
                                    SecureKeys.payhereMerchantSecret,
                                notifyUrl: "http://sample.com/notify",
                                orderId:
                                    "${DateTime.now().millisecondsSinceEpoch}",
                                items: "Wallet Money Added",
                                amount: double.parse(_amountController.text),
                                currency: "LKR",
                                firstName: user.firstName,
                                lastName: user.lastName,
                                email: user.email,
                                phone: user.phone,
                                address: user.addressLine1,
                                city: user.city,
                                country: "Sri Lanka",
                                deliveryAddress: user.addressLine1,
                                deliveryCity: user.city,
                                deliveryCountry: "Sri Lanka",
                              );
                              initiatePayment(paymentDetails);
                            }
                          },
                          orElse: () => "",
                        );

                        // walletNotifier.addWalletAmount(wallet);
                        // ref.refresh(walletProvider);
                        // Future.delayed(Duration(seconds: 2), () {
                        // });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: customColor[800],
                        foregroundColor: Colors.white,
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
                      child: const Text(
                        "Add Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          walletState.maybeMap(
            actionInProgress: (_) => const LinearProgressIndicator(value: null),
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

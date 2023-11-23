import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/shared/providers.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import '../../core/secure.dart';
import '../../domain/orders/model/orders.dart';
import '../../infrastructure/payment/payment_dtos/payment_dto.dart';
import '../../shared/user.dart';

class ElmpierPlusPage extends ConsumerStatefulWidget {
  const ElmpierPlusPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ElmpierPlusPageState();
}

class _ElmpierPlusPageState extends ConsumerState<ElmpierPlusPage> {
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
        print("One Time Payment Success. Payment Id: $paymentId");

        try {
          Orders order = Orders(
            userId: int.parse(userId),
            paymentMethod: "PayHere",
            status: "Paid",
            amount: 1000,
            paymentId: paymentId.toString(),
            statusId: 1,
          );
          print("ORDER DETAILS ***** $order");

          ref.read(elmpierPlusProvider.notifier).createElmpierPlus(order);

          AutoRouter.of(context).replace(const ElmpierPlusSuccessRoute());
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
    final elmpierPlusState = ref.watch(elmpierPlusProvider);
    final userState = ref.watch(userProvider);

    userState.when(
      actionInProgress: () => const CircularProgressIndicator(),
      initial: () => const CircularProgressIndicator(),
      actionFailure: (f) => const CircularProgressIndicator(),
      loaded: (user) {
        _currentUser = user;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ELMPIER PLUS"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: elmpierPlusState.maybeWhen(
          plusUserLoaded: (plusUser) {
            if (plusUser.isPlusUser == true) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    size: 80.0,
                    color: Colors.green,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Congratulations!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "You are an ELMPIER Plus user.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "As an ELMPIER Plus user, you can now:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "1. Post an unlimited number of \n products & advertisements.",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "2. Get 20% off each top & pop ad.",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'lib/assets/images/elmpier-plus-logo.png',
                      height: 100,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      "Upgrade to ELMPIER Plus",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Unlock exclusive features like unlimited product postings, special discounts on ads, and more!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      PaymentDto paymentDetails = PaymentDto(
                        sandbox: true,
                        merchantId: SecureKeys.payhereMerchantId,
                        merchantSecret: SecureKeys.payhereMerchantSecret,
                        notifyUrl: "http://sample.com/notify",
                        orderId: "${DateTime.now().millisecondsSinceEpoch}",
                        items: "PRODUCT IMAGE",
                        amount: 1000.toDouble(),
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
                    },
                    text: 'Get ELMPIER Plus (Rs. 2,000.00)',
                  ),
                ],
              );
            }
          },
          orElse: () {},
        ),
      ),
    );
  }
}

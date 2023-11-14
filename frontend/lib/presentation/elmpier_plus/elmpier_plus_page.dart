import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
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
        // final userId = getLoggedInUserId(ref);
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

    // final elmpierPlusNotifier = ref.watch(elmpierPlusProvider.notifier);
    return Scaffold(
      body: Center(
        child: elmpierPlusState.maybeWhen(
          plusUserLoaded: (plusUser) {
            if (plusUser.isPlusUser == true) {
              return Text("You are a plus user");
            } else {
              return ElevatedButton(
                onPressed: () {
                  // elmpierPlusNotifier.createElmpierPlus();
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
                child: Text("Get ELMPIER Plus"),
              );
            }
          },
          orElse: () {},
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared/providers.dart';
import 'package:payhere_mobilesdk_flutter/payhere_mobilesdk_flutter.dart';

import '../../../core/secure.dart';
import '../../../domain/orders/model/orders.dart';
import '../../../domain/product/model/product.dart';
import '../../../infrastructure/payment/payment_dtos/payment_dto.dart';
import '../../../shared/user.dart';

class SellerProductViewPage extends ConsumerStatefulWidget {
  final Product product;

  SellerProductViewPage({Key? key, required this.product}) : super(key: key);

  @override
  _SellerProductViewPageState createState() => _SellerProductViewPageState();
}

class _SellerProductViewPageState extends ConsumerState<SellerProductViewPage> {
  final CarouselController _controller = CarouselController();

  final double imageHeight = 200.0;
  var _currentUser;
  var _topAdsPrice;
  var _popAdsPrice;

  Future<void> initiatePaymentforTopAds(PaymentDto paymentDetails) async {
    final userId = await ref.read(userIdProvider.future);

    if (userId == null) {
      print("Error: User ID is null");
      return;
    }
    PayHere.startPayment(
      paymentDetails.toJson(),
      (paymentId) async {
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
          // await ref.read(paymentProvider.notifier).createPayment(order);

          ref
              .read(adsProvider.notifier)
              .makeProductTopAds(widget.product.id, order);

          // AutoRouter.of(context).replace(OrderSuccessRoute());
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

  Future<void> initiatePaymentforPopAds(PaymentDto paymentDetails) async {
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
            amount: 1500,
            paymentId: paymentId.toString(),
            statusId: 1,
          );
          print("ORDER DETAILS ***** $order");
          // await ref.read(paymentProvider.notifier).createPayment(order);

          ref
              .read(adsProvider.notifier)
              .makeProductPopAds(widget.product.id, order);

          // AutoRouter.of(context).replace(OrderSuccessRoute());
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
    final userState = ref.watch(userProvider);
    final plusUserState = ref.watch(elmpierPlusProvider);

    plusUserState.maybeWhen(
      plusUserLoaded: (user) {
        if (user.isPlusUser == true) {
          _topAdsPrice = 700;
          _popAdsPrice = 1050;
        } else {
          _topAdsPrice = 1000;
          _popAdsPrice = 1000;
        }
      },
      orElse: (() => ""),
    );

    userState.when(
      actionInProgress: () => const CircularProgressIndicator(),
      initial: () => const CircularProgressIndicator(),
      actionFailure: (f) => const CircularProgressIndicator(),
      loaded: (user) {
        _currentUser = user;
      },
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 90.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (widget.product.imageUrls.isNotEmpty &&
                      widget.product.imageUrls.length > 1)
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          carouselController: _controller,
                          itemCount: widget.product.imageUrls.length,
                          itemBuilder: (context, index, realIdx) {
                            return Image.network(
                              widget.product.imageUrls[index],
                              height: imageHeight,
                              fit: BoxFit.cover,
                            );
                          },
                          options: CarouselOptions(
                            height: imageHeight,
                            autoPlay: true,
                            enlargeCenterPage: true,
                          ),
                        ),
                        Positioned(
                          top: (imageHeight / 2) - 20,
                          left: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () => _controller.previousPage(),
                          ),
                        ),
                        Positioned(
                          top: (imageHeight / 2) - 20,
                          right: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () => _controller.nextPage(),
                          ),
                        ),
                      ],
                    )
                  else if (widget.product.imageUrls.isNotEmpty)
                    Center(
                      child: Image.network(
                        widget.product.imageUrls.first,
                        height: imageHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.product.name.getOrCrash(),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Price: RS.${widget.product.price.getOrCrash()}0",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Delivery Date: Nov 26 - Nov 30",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Delivery Fee: Rs. 250.00",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.product.description.getOrCrash(),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    PaymentDto paymentDetails = PaymentDto(
                      sandbox: true,
                      merchantId: SecureKeys.payhereMerchantId,
                      merchantSecret: SecureKeys.payhereMerchantSecret,
                      notifyUrl: "http://sample.com/notify",
                      orderId: "${DateTime.now().millisecondsSinceEpoch}",
                      items: widget.product.name.getOrCrash(),
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
                    initiatePaymentforTopAds(paymentDetails);

                    // adsNotifier.makeProductTopAds(widget.product.id);
                  },
                  child: Text("Top Ads (Rs. $_topAdsPrice.00)"),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      PaymentDto paymentDetails = PaymentDto(
                        sandbox: true,
                        merchantId: SecureKeys.payhereMerchantId,
                        merchantSecret: SecureKeys.payhereMerchantSecret,
                        notifyUrl: "http://sample.com/notify",
                        orderId: "${DateTime.now().millisecondsSinceEpoch}",
                        items: widget.product.name.getOrCrash(),
                        amount: 1500.toDouble(),
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
                      initiatePaymentforPopAds(paymentDetails);

                      // adsNotifier.makeProductTopAds(widget.product.id);
                    },
                    child: const Text("Pop Ads"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/shared/providers.dart';
import 'package:intl/intl.dart';
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
            amount: _topAdsPrice,
            paymentId: paymentId.toString(),
            statusId: 1,
          );

          ref
              .read(adsProvider.notifier)
              .makeProductTopAds(widget.product.id, order);
        } catch (e) {}
      },
      (error) {},
      () {},
    );
  }

  Future<void> initiatePaymentforPopAds(PaymentDto paymentDetails) async {
    final userId = await ref.read(userIdProvider.future);

    if (userId == null) {
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
            amount: _popAdsPrice,
            paymentId: paymentId.toString(),
            statusId: 1,
          );

          ref
              .read(adsProvider.notifier)
              .makeProductPopAds(widget.product.id, order);

        } catch (e) {
        }
      },
      (error) {
      },
      () {
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final cartNotifier = ref.read(cartProvider.notifier);
    final itemCount = ref.watch(cartProvider).itemsCount;
    final userId = getLoggedInUserId(ref);
    final deleteProductNotifier = ref.watch(addProductProvider.notifier);

    final userState = ref.watch(userProvider);
    final plusUserState = ref.watch(elmpierPlusProvider);

    Future<void> _showDeleteConfirmationDialog() async {
      final shouldDelete = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Delete Product"),
          content: const Text("Are you sure you want to delete this product?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("No"),
            ),
            ElevatedButton(
              onPressed: () {
                deleteProductNotifier.deleteProduct(widget.product.id);
                print("DELETE PRODUCT ID IS ${widget.product.id}");
                Navigator.of(context).pop(true);
              },
              child: const Text(
                "Yes",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );

      if (shouldDelete == true) {
      }
    }

    plusUserState.maybeWhen(
      plusUserLoaded: (user) {
        if (user.isPlusUser == true) {
          _topAdsPrice = 700;
          _popAdsPrice = 1050;
        } else {
          _topAdsPrice = 900;
          _popAdsPrice = 1300;
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
    String formattedPrice =
        NumberFormat('#,##0').format(widget.product.price.getOrCrash());

    return Scaffold(
      appBar: AppBar(
        title: Text('Products View'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => _showDeleteConfirmationDialog(),
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red[50],
              ),
              child: Center(
                child: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'LKR',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: customColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: formattedPrice,
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: customColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '.00',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: customColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Product Description",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
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
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: 25.0, left: 24.0, right: 24.0, top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
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
                        amount: _topAdsPrice.toDouble(),
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

                    },
                    child: Text("Top Ads (Rs. $_topAdsPrice.00)"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: customColor[100],
                      foregroundColor: customColor,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      fixedSize: const Size(double.infinity, 50),
                    ),
                  ),
                ),
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
                        amount: _popAdsPrice.toDouble(),
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

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: customColor,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      fixedSize: const Size(double.infinity, 50),
                    ),
                    child: Text("Pop Ads (Rs. $_popAdsPrice.00)"),
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

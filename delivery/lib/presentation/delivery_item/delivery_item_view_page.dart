import 'package:auto_route/auto_route.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/presentation/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import '../../shared/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DeliveryItemViewPage extends ConsumerStatefulWidget {
  final int productId;
  final int orderItemId;

  const DeliveryItemViewPage(
      {Key? key, required this.productId, required this.orderItemId})
      : super(key: key);

  @override
  _OrderItemViewPageState createState() => _OrderItemViewPageState();
}

class _OrderItemViewPageState extends ConsumerState<DeliveryItemViewPage> {
  final CarouselController _controller = CarouselController();
  final double imageHeight = 200.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(productProvider.notifier).getOrderedProduct(widget.productId);
    });
  }

  void _makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Product"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: productState.maybeWhen(
        loadSuccess: (product) {
          
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                if (product.imageUrls.isNotEmpty &&
                    product.imageUrls.length > 1)
                  Stack(
                    children: [
                      CarouselSlider.builder(
                        carouselController: _controller,
                        itemCount: product.imageUrls.length,
                        itemBuilder: (context, index, realIdx) {
                          return Image.network(
                            product.imageUrls[index],
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
                else if (product.imageUrls.isNotEmpty)
                  Center(
                    child: Image.network(
                      product.imageUrls.first,
                      height: imageHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                const SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: const BoxDecoration(
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
                            product.name,
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
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: NumberFormat('#,##0')
                                      .format(product.price),
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '.00',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
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
                            product.description,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loadInProgress: () => CircularProgressIndicator(),
        loadFailure: (failure) => Text('Failed to load product'),
        orElse: () => Container(),
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
                  child: CustomElevatedButton(
                    onPressed: () => _makePhoneCall("94774458623"),
                    text: 'Call',
                    
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: CustomElevatedButton(
                    onPressed: () async {
                      final result = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("Confirm Delivery"),
                          content: const Text(
                              "Are you sure to delivery this product?"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text("No"),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("Yes"),
                            ),
                          ],
                        ),
                      );

                      if (result == true) {
                        ref
                            .watch(productProvider.notifier)
                            .deliveryProduct(widget.orderItemId);
                        AutoRouter.of(context)
                            .replace(DeliveryProductSuccessRoute());
                      }
                    },
                    text: 'Delivery',
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

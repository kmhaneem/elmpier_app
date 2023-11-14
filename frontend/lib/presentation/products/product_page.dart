import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/domain/cart/model/cart.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/presentation/products/widget/cart_item.dart';
import 'package:intl/intl.dart';
import '../../domain/product/model/product.dart';
import '../../shared/providers.dart';
import '../../shared/user.dart';
import '../ads/popup.dart';
import '../routes/app_router.gr.dart';

class ProductPage extends ConsumerStatefulWidget {
  final Product product;

  ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  final CarouselController _controller = CarouselController();

  final double imageHeight = 200.0;

  final TextEditingController _qtyController = TextEditingController(text: "1");
  int _selectedQty = 1; // Start with 1 as default

  @override
  Widget build(BuildContext context) {
    final cartNotifier = ref.read(cartProvider.notifier);
    final itemCount = ref.watch(cartProvider).itemsCount;
    final availableQty = widget.product.stock.getOrCrash();
    final userId = getLoggedInUserId(ref);
    String formattedPrice =
        NumberFormat('#,##0').format(widget.product.price.getOrCrash());

    final price = widget.product.price.getOrCrash();

    int calculateShippingCost(int productAmount) {
      if (productAmount < 1000) {
        return 250;
      } else if (productAmount >= 1000 && productAmount < 5000) {
        return 300;
      } else if (productAmount >= 5000 && productAmount < 10000) {
        return 350;
      } else if (productAmount >= 10000 && productAmount < 50000) {
        return 400;
      } else if (productAmount >= 50000) {
        return 500;
      } else {
        return 0;
      }
    }

    final shippingCost = calculateShippingCost(price);

    String calculateEstimatedDeliveryDateRange() {
      final now = DateTime.now();

      final startDeliveryDate = now.add(Duration(days: 12));

      final endDeliveryDate = now.add(Duration(days: 15));

      final formatter = DateFormat('MMM dd');
      final startFormatted = formatter.format(startDeliveryDate);
      final endFormatted = formatter.format(endDeliveryDate);

      return '$startFormatted - $endFormatted';
    }

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  final stack = AutoRouter.of(context).stack;
                  if (stack.isNotEmpty && stack.last is PopupAds) {
                    AutoRouter.of(context).replace(HomeRoute());
                  } else {
                    AutoRouter.of(context).pop();
                  }
                },
              ),
              IconButton(
                icon: Consumer(
                  builder: (context, WidgetRef ref, child) {
                    final cartCount = ref.watch(cartProvider).itemsCount;
                    return cartIconWithBadge(cartCount);
                  },
                ),
                onPressed: () {
                  context.router.push(const CartRoute());
                },
              ),
            ],
          ),
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
                      // height: double.infinity,
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
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                color: customColor[100],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(Icons.check,
                                          size: 20.0, color: Colors.green),
                                      SizedBox(width: 8.0),
                                      Text(
                                        'This Product',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    '• Shipping cost: Rs. $shippingCost.00',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    '• Fast delivery by ${calculateEstimatedDeliveryDateRange()}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
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
                // Quantity selector container
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:
                        BorderRadius.circular(25.0), // Rounded corners
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: _selectedQty > 1
                            ? () {
                                setState(() {
                                  _selectedQty--;
                                });
                              }
                            : null,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      Text("$_selectedQty"),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed:
                            _selectedQty < widget.product.stock.getOrCrash()
                                ? () {
                                    setState(() {
                                      _selectedQty++;
                                    });
                                  }
                                : null,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (userId == null) {
                        return;
                      }
                      final cartItem = Cart(
                        // userId: userId,
                        productId: widget.product.id,
                        name: widget.product.name.getOrCrash(),
                        price: widget.product.price.getOrCrash(),
                        itemQty: _selectedQty,
                        imageUrl: widget.product.imageUrls.first,
                      );
                      try {
                        await cartNotifier.addToCart(cartItem);
                        ref.refresh(cartProvider);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Product added to cart!'),
                          ),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
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
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final cartItem = Cart(
                        productId: widget.product.id,
                        name: widget.product.name.getOrCrash(),
                        price: widget.product.price.getOrCrash(),
                        itemQty: _selectedQty,
                        imageUrl: widget.product.imageUrls.first,
                      );

                      try {
                        await cartNotifier.addToCart(cartItem);
                        ref.refresh(cartProvider);
                        context.router.push(CheckoutRoute());
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
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
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/domain/cart/model/cart.dart';
import 'package:frontend/presentation/products/widget/cart_item.dart';
import '../../domain/product/model/product.dart';
import '../../shared/providers.dart';
import '../../shared/user.dart';
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: kToolbarHeight + MediaQuery.of(context).padding.top,
              color: Colors.grey, // Or any other color you want
              child: Padding(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
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
                    )
                  ],
                ),
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
            Row(
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
                ),
                Text("$_selectedQty"),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _selectedQty < widget.product.stock.getOrCrash()
                      ? () {
                          setState(() {
                            _selectedQty++;
                          });
                        }
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (userId == null) {
                          return; 
                        }
                    final cartItem = Cart(
                      // userId: userId,
                      productId: widget.product.id,
                      name: widget.product.name.getOrCrash(),
                      price: widget.product.price.getOrCrash(),
                      itemQty: _selectedQty, // Use the counter's value
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
                  child: const Text("Add to Cart"),
                ),
                const SizedBox(width: 8), 
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
                        context.router
                            .push(CheckoutRoute());
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Colors.green; 
                        },
                      ),
                    ),
                    child: const Text("Buy Now"),
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

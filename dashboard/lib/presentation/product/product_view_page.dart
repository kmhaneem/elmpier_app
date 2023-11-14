import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/product/product.dart';
import '../../../shared/provider.dart';

class ProductViewPage extends ConsumerStatefulWidget {
  final Product product;

  ProductViewPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends ConsumerState<ProductViewPage> {
  final CarouselController _controller = CarouselController();

  final double imageHeight = 200.0;

  @override
  Widget build(BuildContext context) {
  

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
                      widget.product.name,
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
                      "Price: RS.${widget.product.price}",
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
                      widget.product.description,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //   onPressed: () async {
                //     ref
                //         .read(productStatusProvider.notifier)
                //         .productApprove(widget.product.id);
                //     ref.refresh(productProvider);
                //     AutoRouter.of(context).replace(ReviewProductRoute());
                //   },
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
                //       (Set<MaterialState> states) {
                //         return Colors.green; 
                //       },
                //     ),
                //   ),
                //   child: const Text("Approve"),
                // ),
                const SizedBox(width: 8), 
                ElevatedButton(
                  onPressed: () async {
                    ref
                        .read(productStatusProvider.notifier)
                        .productVisible(widget.product.id);
                    ref.refresh(productProvider);
                    // AutoRouter.of(context).replace(ReviewProductRoute());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.red; 
                      },
                    ),
                  ),
                  child: const Text("Visible"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

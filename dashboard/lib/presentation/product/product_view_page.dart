import 'package:dashboard/domain/product/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ProductViewPage extends ConsumerStatefulWidget {
  final Product product;

  ProductViewPage({Key? key, required this.product}) : super(key: key);

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends ConsumerState<ProductViewPage> {
  final CarouselController _controller = CarouselController();

  final double imageHeight = 200.0;

  final TextEditingController _qtyController = TextEditingController(text: "1");
  int _selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat('#,##0').format(widget.product.price);

    return Scaffold(
      appBar: AppBar(
        title: Text("Product Page"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [],
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
                                widget.product.name,
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
                                      text: formattedPrice,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../domain/product/model/product.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  final CarouselController _controller = CarouselController();
  final double imageHeight = 200.0;

  ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name.getOrCrash()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (product.imageUrls.isNotEmpty && product.imageUrls.length > 1)
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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => _controller.previousPage(),
                    ),
                  ),
                  Positioned(
                    top: (imageHeight / 2) - 20,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
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
            SizedBox(height: 10),
            Text(
              product.name.getOrCrash(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              product.description.getOrCrash(),
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Price: RS.${product.price.getOrCrash()}0",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            // ... Rest of the code
          ],
        ),
      ),
    );
  }
}

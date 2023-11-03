import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  final List<String> imageUrls;
  final double height;

  const ImageSlider({Key? key, required this.imageUrls, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController _controller = CarouselController();

    return imageUrls.isNotEmpty && imageUrls.length > 1
        ? Stack(
            children: [
              CarouselSlider.builder(
                carouselController: _controller,
                itemCount: imageUrls.length,
                itemBuilder: (context, index, realIdx) {
                  return Image.network(
                    imageUrls[index],
                    height: height,
                    fit: BoxFit.cover,
                  );
                },
                options: CarouselOptions(
                  height: height,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
              ),
              Positioned(
                top: (height / 2) - 20,
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => _controller.previousPage(),
                ),
              ),
              Positioned(
                top: (height / 2) - 20,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () => _controller.nextPage(),
                ),
              ),
            ],
          )
        : Center(
            child: Image.network(
              imageUrls.first,
              height: height,
              fit: BoxFit.cover,
            ),
          );
  }
}

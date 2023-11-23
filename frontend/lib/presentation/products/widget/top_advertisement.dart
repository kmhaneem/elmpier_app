import 'dart:async';
import 'package:flutter/material.dart';

class TopAdvertisement extends StatefulWidget {
  final List<String> imageUrls;
  final Function(String) onImageTap; 

  const TopAdvertisement({
    Key? key,
    required this.imageUrls,
    required this.onImageTap,
  }) : super(key: key);

  @override
  _TopAdvertisementState createState() => _TopAdvertisementState();
}

class _TopAdvertisementState extends State<TopAdvertisement> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      if (_currentPage < widget.imageUrls.length - 1) {
        _pageController.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeInOutCubic);
      } else {
        _pageController.jumpToPage(0);
      }
    });

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          elevation: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.imageUrls.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => widget.onImageTap(widget.imageUrls[index]),
                    child: Image.network(
                      widget.imageUrls[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          Center(child: Text('Error loading image')),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              widget.imageUrls.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == _currentPage
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

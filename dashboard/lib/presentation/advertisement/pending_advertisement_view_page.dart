import 'package:auto_route/auto_route.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/product/product.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class PendingAdvertisementViewPage extends ConsumerStatefulWidget {
  final Advertisement advertisement;

  PendingAdvertisementViewPage({Key? key, required this.advertisement})
      : super(key: key);

  @override
  _PendingAdvertisementViewPageState createState() =>
      _PendingAdvertisementViewPageState();
}

class _PendingAdvertisementViewPageState
    extends ConsumerState<PendingAdvertisementViewPage> {
  Future<void> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    required VoidCallback onConfirm,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("No"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text(
              "Yes",
            ),
          ),
        ],
      ),
    );

    if (result == true) {
      onConfirm();
    }
  }

  final CarouselController _controller = CarouselController();

  final double imageHeight = 200.0;

  final TextEditingController _qtyController = TextEditingController(text: "1");
  int _selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    String formattedPrice =
        NumberFormat('#,##0').format(widget.advertisement.price);

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
                    if (widget.advertisement.imageUrls.isNotEmpty &&
                        widget.advertisement.imageUrls.length > 1)
                      Stack(
                        children: [
                          CarouselSlider.builder(
                            carouselController: _controller,
                            itemCount: widget.advertisement.imageUrls.length,
                            itemBuilder: (context, index, realIdx) {
                              return Image.network(
                                widget.advertisement.imageUrls[index],
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
                    else if (widget.advertisement.imageUrls.isNotEmpty)
                      Center(
                        child: Image.network(
                          widget.advertisement.imageUrls.first,
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
                                widget.advertisement.name,
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
                                widget.advertisement.description,
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
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      showConfirmationDialog(
                        context: context,
                        title: "Approve Advertisement",
                        content:
                            "Are you sure you want to approve this advertisment?",
                        onConfirm: () {
                          ref
                              .read(allAdvertisementProvider.notifier)
                              .approveAdvertisementUpdated(
                                  widget.advertisement.id);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[100],
                      foregroundColor: Colors.green,
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
                      "Approve",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      showConfirmationDialog(
                        context: context,
                        title: "Reject Advertisement",
                        content:
                            "Are you sure you want to reject this advertisement?",
                        onConfirm: () {
                          ref
                              .read(allAdvertisementProvider.notifier)
                              .rejectAdvertisementUpdated(
                                  widget.advertisement.id);
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[100],
                      foregroundColor: Colors.red,
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
                      "Reject",
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

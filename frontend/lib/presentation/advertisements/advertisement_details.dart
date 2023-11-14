import 'package:flutter/material.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:intl/intl.dart';

import '../core/widget/colors.dart';

class AdvertisementDetails extends StatelessWidget {
  final Advertisement advertisement;

  AdvertisementDetails({Key? key, required this.advertisement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat('#,##0').format(advertisement.price);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "${advertisement.category!} >> ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                "${advertisement.brand!} >> ",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Text(
                "${advertisement.model!}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            advertisement.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
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
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "For Sale By ",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              Text(
                "${advertisement.advertiserName!}",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_rounded,
                color: Colors.grey[500],
              ),
              Text(
                " ${advertisement.province!} Province > ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
              Text(
                "${advertisement.district!}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                advertisement.condition!,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
                height: 8,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                advertisement.description,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}

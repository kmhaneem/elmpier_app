import 'package:flutter/material.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';

class AdvertisementDetails extends StatelessWidget {
  final Advertisement advertisement;

  const AdvertisementDetails({Key? key, required this.advertisement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            advertisement.name,
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
            "Price: RS.${advertisement.price}",
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
            advertisement.description,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            advertisement.province!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            advertisement.district!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            advertisement.category!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            advertisement.condition!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}

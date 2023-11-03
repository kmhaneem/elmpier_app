import 'package:flutter/material.dart';

class SummarySection extends StatelessWidget {
  final int totalItemCost;
  final int totalShipping;

  const SummarySection({Key? key, required this.totalItemCost, required this.totalShipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Total Item costs
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Item costs",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Rs. ${totalItemCost.toStringAsFixed(2)}"),
            ],
          ),
          SizedBox(height: 16.0),

          // Promo Code (To be implemented later)
          Text("Promo Code: To be implemented",
              style: TextStyle(color: Colors.red)),

          SizedBox(height: 16.0),

          // Total Shipping
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Shipping",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Rs. ${totalShipping.toStringAsFixed(2)}"),
            ],
          ),
        ],
      ),
    );
  }
}

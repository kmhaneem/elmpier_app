import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SummarySection extends StatelessWidget {
  final int totalItemCost;
  final int totalShipping;

  const SummarySection(
      {Key? key, required this.totalItemCost, required this.totalShipping})
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
          Text(
            "Summery",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total item costs",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Rs. ${NumberFormat('#,##0').format(totalItemCost)}.00"),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total shipping",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Rs. ${NumberFormat('#,##0').format(totalShipping)}.00"),
            ],
          ),
        ],
      ),
    );
  }
}

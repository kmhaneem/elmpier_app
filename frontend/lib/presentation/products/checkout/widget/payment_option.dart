import 'package:flutter/material.dart';

class PaymentOption extends StatefulWidget {
  final String selectedOption;
  final Function(String) onOptionSelected;

  const PaymentOption({
    Key? key,
    required this.selectedOption,
    required this.onOptionSelected,
  }) : super(key: key);

  @override
  _PaymentOptionState createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  String? _selectedPaymentOption;

  @override
  void initState() {
    super.initState();
    _selectedPaymentOption = widget.selectedOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          RadioListTile<String>(
            title: const Text("Card"),
            value: "Card",
            groupValue: _selectedPaymentOption,
            onChanged: (value) {
              setState(() {
                _selectedPaymentOption = value;
              });
              widget.onOptionSelected(value!);
            },
            contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
          ),
          RadioListTile<String>(
            title: const Text("Cash on Delivery"),
            value: "Cash on Delivery",
            groupValue: _selectedPaymentOption,
            onChanged: (value) {
              setState(() {
                _selectedPaymentOption = value;
              });
              widget.onOptionSelected(value!);
            },
            contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
          ),
        ],
      ),
    );
  }
}

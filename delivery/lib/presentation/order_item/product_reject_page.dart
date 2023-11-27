import 'package:auto_route/auto_route.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/presentation/widget/colors.dart';
import 'package:delivery/presentation/widget/custom_elevated_button.dart';
import 'package:delivery/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductRejectPage extends ConsumerWidget {
  final int productId;
  const ProductRejectPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _reasonController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reject Product"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Why are you rejecting this product?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _reasonController,
                decoration: const InputDecoration(
                  labelText: 'Reason for Rejection',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.edit),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                onPressed: () {
                  ref
                      .watch(productProvider.notifier)
                      .rejectProductReason(productId, _reasonController.text);
                  _reasonController.clear();
                  AutoRouter.of(context)
                      .push(const ProductRejectSuccessRoute());
                },
                text: "Submit Rejection",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

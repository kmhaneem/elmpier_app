import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/user/model/user.dart';

import '../../../routes/app_router.gr.dart';

class AddressSection extends ConsumerStatefulWidget {
  final UserModel user;

  AddressSection({required this.user});

  @override
  _AddressSectionState createState() => _AddressSectionState();
}

class _AddressSectionState extends ConsumerState<AddressSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius:
            BorderRadius.circular(8.0), 
        border: Border.all(
          color: Colors.grey[300]!, 
          width: 1.0, 
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Shipping Address",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.user.firstName + " " + widget.user.lastName),
                    Text(widget.user.addressLine1),
                    Text(widget.user.addressLine2),
                    Text(widget.user.city),
                    Text("${widget.user.postalCode}"),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit, color: Theme.of(context).primaryColor),
                onPressed: () {
                  setState(() {
                    AutoRouter.of(context).replace(UserProfileAddRoute(previousPage: "CheckoutPage"));
                  });

                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

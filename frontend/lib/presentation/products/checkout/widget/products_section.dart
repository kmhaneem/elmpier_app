import 'package:flutter/material.dart';
import 'package:frontend/domain/cart/model/cart.dart';

class ProductsSection extends StatelessWidget {
  final List<Cart> cartItems;

  const ProductsSection({Key? key, required this.cartItems}) : super(key: key);

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
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final cartItem = cartItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Column(
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      cartItem.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(cartItem.name),
                  subtitle: Text(
                      "Price: RS.${cartItem.price} x ${cartItem.itemQty}"),
                  trailing: Text(
                    "Total: RS.${cartItem.price * cartItem.itemQty}",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text("Estimated delivery on Oct 30",
                          style: TextStyle(color: Colors.grey[600])),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

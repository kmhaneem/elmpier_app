import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';
import 'package:intl/intl.dart';

import '../../../shared/user.dart';
import '../../core/widget/colors.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(cartProvider.notifier).loadCartItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartProvider);
    final cartNotifier = ref.read(cartProvider.notifier);
    final userId = getLoggedInUserId(ref);
    var _price;

    int numberOfItemsInCart() {
      return cartState.maybeWhen(
        loaded: (cartItems) => cartItems.length,
        orElse: () => 0,
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("ELMPIER Cart"),
      ),
      body: cartState.maybeWhen(
        initial: () => const Center(child: Text("Start shopping!")),
        actionInProgress: () =>
            const Center(child: CircularProgressIndicator()),
        actionFailure: (failure) => Center(
            child: Text(failure.maybeWhen(
          serverError: () => "Server Error",
          notFound: () => "Cart Not Found",
          orElse: () => "An error occurred.",
        ))),
        loaded: (cartItems) {
          if (cartItems.isEmpty) {
            return const Center(child: Text("No Items Found"));
          } else {
            return ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final cartItem = cartItems[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              cartItem.imageUrl,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, 
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 4),
                                child: Text(
                                  cartItem.name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "Rs.${NumberFormat('#,##0').format(cartItem.price)}.00 x ${cartItem.itemQty}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: Text(
                                  "Total: Rs.${NumberFormat('#,##0').format(cartItem.price) * cartItem.itemQty}.00",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            if (userId == null) {
                              return;
                            }
                            cartNotifier.removeFromCart(userId, cartItem);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
        orElse: () => const Center(child: Text("Unknown State")),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: 25.0, left: 24.0, right: 24.0, top: 15),
        child: ElevatedButton(
          onPressed: () async {
            context.router.push(CheckoutRoute());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: customColor[100],
            foregroundColor: customColor,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            fixedSize: const Size(double.infinity, 50),
          ),
          child: Text(
            "Checkout (${numberOfItemsInCart()})",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

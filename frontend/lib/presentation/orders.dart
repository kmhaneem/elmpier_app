import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared/providers.dart';

import '../shared/user.dart';
// Add other necessary imports

class OrdersPage extends ConsumerStatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends ConsumerState<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    final orderItemNotifier = ref.read(orderItemProvider.notifier);
    final orderItemState = ref.watch(orderItemProvider);

    @override
    void initState() {
      super.initState();
        ref.refresh(orderItemProvider);
      
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {

        orderItemNotifier.watchAllStarted();
      });


    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Orders 👋",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                orderItemState.when(
                  initial: () => Container(),
                  loadInProgress: () => CircularProgressIndicator(),
                  loadSuccess: (orderItems) => Column(
                    children: orderItems.map((orderItem) {
                      return InkWell(
                        onTap: () {
                        },
                        child: Card(
                          elevation: 1,
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Container(
                            height: 100,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      orderItem.imageUrl.isNotEmpty
                                          ? orderItem.imageUrl
                                          : 'lib/assets/images/default-image.png', 
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 4),
                                        child: Text(
                                          orderItem.name,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Text(
                                          "RS.${orderItem.price}",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  loadFailure: (failure) => Text(failure.toString()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/products/widget/core/constant.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/shared/providers.dart';

import '../core/widget/colors.dart';

class PopupAds extends ConsumerStatefulWidget {
  const PopupAds({Key? key}) : super(key: key);

  @override
  _PopupAdsState createState() => _PopupAdsState();
}

class _PopupAdsState extends ConsumerState<PopupAds> {
  var _product;
  @override
  Widget build(BuildContext context) {
    final adsState = ref.watch(adsProvider);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    color: customColor,
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'FEATURED AD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: adsState.maybeWhen(
                        loaded: (product) =>
                            NetworkImage(product.imageUrls.first),
                        orElse: () => const AssetImage(
                          "lib/assets/images/elmpier-logo.png",
                        ),
                      ),
                      width: 400,
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      adsState.maybeWhen(
                        loaded: (product) {
                          _product = product;
                          return 'Rs. ${_product.name.getOrCrash()}';
                        },
                        orElse: () => 'Loading...',
                      ),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      adsState.maybeWhen(
                        loaded: (product) =>
                            'Rs. ${product.price.getOrCrash()}',
                        orElse: () => 'Loading...',
                      ),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Brand New",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      onPressed: () {
                        AutoRouter.of(context)
                            .push(ProductRoute(product: _product));
                        Navigator.of(context).pop();
                      },
                      text: "View Details",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showPopupAds(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) => const PopupAds(),
  );
}

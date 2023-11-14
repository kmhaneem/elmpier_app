import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/widget/image_slider.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../shared/providers.dart';
import '../../shared/user.dart';
import '../ads/popup.dart';
import '../core/widget/colors.dart';
import 'advertisement_details.dart';

class AdvertisementViewPage extends ConsumerStatefulWidget {
  final Advertisement advertisement;

  const AdvertisementViewPage({Key? key, required this.advertisement})
      : super(key: key);

  @override
  _AdvertisementViewPageState createState() =>
      _AdvertisementViewPageState(advertisement);
}

class _AdvertisementViewPageState extends ConsumerState<AdvertisementViewPage> {
  final CarouselController _controller = CarouselController();
  final double imageHeight = 200.0;
  final Advertisement advertisement;

  _AdvertisementViewPageState(this.advertisement);

  Future<void> _sendWhatsAppMessage(String phoneNumber,
      [String? message]) async {
    final url =
        'whatsapp://send?phone=$phoneNumber&text=${Uri.encodeFull(message ?? "")}';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _makePhoneCall(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _sendSMS(String phoneNumber) async {
    final url = 'sms:$phoneNumber';

    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> getLoggedInUserIdFromStorage() async {
    return await secureStorage.read("user-id");
  }

  Future<String?> getEmailByUserId(String userId) async {
    try {
      final docSnapshot =
          await _firestore.collection('users').doc(userId).get();

      if (docSnapshot.exists) {
        return docSnapshot.data()?['email'] as String?;
      } else {
        return null;
      }
    } catch (e) {
      print("Error fetching email: $e");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final userId = getLoggedInUserId(ref);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  final stack = AutoRouter.of(context).stack;
                  if (stack.isNotEmpty && stack.last is PopupAds) {
                    AutoRouter.of(context).replace(HomeRoute());
                  } else {
                    AutoRouter.of(context).pop();
                  }
                },
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ImageSlider(
                      height: imageHeight,
                      imageUrls: advertisement.imageUrls,
                    ),
                    const SizedBox(height: 10),
                    AdvertisementDetails(advertisement: advertisement),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            bottom: 25.0, left: 24.0, right: 24.0, top: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _makePhoneCall(advertisement.phone!),
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 8),
                        Text(
                          "Call Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      String? userId = await getLoggedInUserIdFromStorage();
                      String? email;
                      if (userId != null) {
                        email = await getEmailByUserId(userId);
                      }
                      if (email != null) {
                        AutoRouter.of(context).push(ChatRoute(
                            otherUserId: advertisement.userId.toString(),
                            userId: userId!,
                            email: email));
                      } else {}
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.chat),
                        SizedBox(width: 8),
                        Text(
                          "Chat",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () => _makePhoneCall(advertisement.phone!),
                //   child: Text("Call Now"),
                // ),
                // ElevatedButton(
                // onPressed: () async {
                //   String? userId = await getLoggedInUserIdFromStorage();
                //   String? email;
                //   if (userId != null) {
                //     email = await getEmailByUserId(userId);
                //   }
                //   if (email != null) {
                //     AutoRouter.of(context).push(ChatRoute(
                //         otherUserId: advertisement.userId.toString(),
                //         userId: userId!,
                //         email: email));
                //   } else {}
                // },
                //   child: Text("Chat"),
                // ),
                // const SizedBox(width: 8),
                // Expanded(
                //   child: ElevatedButton(
                //     onPressed: () => _sendWhatsAppMessage(advertisement.phone!,
                //         "Hello! I'm interested in your advertisement."),
                //     child: const Text("WhatsApp"),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

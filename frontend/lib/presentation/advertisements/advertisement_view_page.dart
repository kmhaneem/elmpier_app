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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 90.0),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => _makePhoneCall(advertisement.phone!),
                  child: Text("Call Now"),
                ),
                ElevatedButton(
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
                  child: Text("Chat"),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => _sendWhatsAppMessage(advertisement.phone!,
                        "Hello! I'm interested in your advertisement."),
                    child: const Text("WhatsApp"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

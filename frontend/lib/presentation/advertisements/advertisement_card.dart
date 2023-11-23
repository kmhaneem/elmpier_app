import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../application/advertisement/advertisement_state.dart';
import '../routes/app_router.gr.dart';

class AdvertisementCardPage extends StatelessWidget {
  final AdvertisementState advertisementState;

  AdvertisementCardPage({required this.advertisementState});

  @override
  Widget build(BuildContext context) {
    String formatTimeDifference(DateTime createDate) {
      final currentTime = DateTime.now();
      final difference = currentTime.difference(createDate);

      String formatDate(DateTime date) {
        return DateFormat('dd MMM yyyy').format(date);
      }

      if (difference.inSeconds < 60) {
        return 'just now';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes} minutes';
      } else if (difference.inHours < 24) {
        return '${difference.inHours} hours';
      } else if (difference.inDays < 30) {
        return '${difference.inDays} days';
      } else {
        return formatDate(createDate);
      }
    }

    DateTime? customParse(String? dateString) {
      if (dateString == null) {
        return null;
      }

      try {
        return DateFormat('dd MMM yyyy hh:mma').parse(dateString);
      } catch (e) {
        print("Failed to parse date: $dateString");
        return null;
      }
    }

    return advertisementState.maybeWhen(
        initial: () => Container(),
        loadInProgress: () => CircularProgressIndicator(),
        loadSuccess: (advertisements) => Column(
              children: advertisements.asMap().entries.map((e) {
                return InkWell(
                  onTap: () {
                    context.router
                        .push(AdvertisementViewRoute(advertisement: e.value));
                  },
                  child: Card(
                    elevation: 1,
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                ((e.value.imageUrls.isNotEmpty) &&
                                        e.value.imageUrls.first.isNotEmpty)
                                    ? e.value.imageUrls.first
                                    : 'lib/assets/images/elmpier-logo.png',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 4),
                                  child: Text(
                                    e.value.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  e.value.condition!,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    "${e.value.district}, ${e.value.category}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "RS.${e.value.price}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: e.value.createDate != null
                                ? Text(
                                    formatTimeDifference(
                                        customParse(e.value.createDate)!),
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                : Text('Unknown Date'),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        loadFailure: (failure) => Text(failure.toString()),
        searchLoaded: ((advertisement) => Text("Hello")),
        orElse: () => Text("Hello"));
  }
}

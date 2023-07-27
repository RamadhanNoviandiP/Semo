import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:semo/const.dart';
import 'package:shimmer/shimmer.dart';

class BannerCard extends StatelessWidget {
  final String imageUrl;
  const BannerCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: CachedNetworkImage(
          imageUrl: '$BaseUrl$imageUrl',
          progressIndicatorBuilder: (context, url, DownloadProgress) =>
              Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey.shade300,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}

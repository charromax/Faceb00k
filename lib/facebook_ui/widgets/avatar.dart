import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
    this.borderWidth = 0,
  });

  final double size;
  final String asset;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final isNetworkImage =
        asset.startsWith("http://") || asset.startsWith("https://");
    final imageProvider =
        isNetworkImage ? CachedNetworkImageProvider(asset) : AssetImage(asset);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imageProvider as ImageProvider,
          ),
          shape: BoxShape.circle,
          border: Border.all(width: borderWidth, color: Colors.white)),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            size * .5,
          ),
          child: Image.asset(
            asset,
            width: size,
            height: size,
          ),
        ),
      ),
    );
  }
}

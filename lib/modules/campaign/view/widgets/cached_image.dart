import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double borderRadius;
  final BoxFit fit;

  const CachedImage({
    super.key,
    required this.imageUrl,
    this.height = 100,
    this.width = double.infinity,
    this.borderRadius = 8,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, url) => Stack(
          fit: StackFit.expand,
          children: [
            // Slight blur while loading
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const Center(
              child: Icon(Icons.image, color: Colors.white54, size: 32),
            ),
          ],
        ),
        fadeInDuration: const Duration(milliseconds: 600), // smooth fade
        errorWidget: (context, url, error) => Container(
          color: Colors.grey.shade200,
          alignment: Alignment.center,
          child: const Icon(Icons.broken_image, color: Colors.grey, size: 32),
        ),
      ),
    );
  }
}
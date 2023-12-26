import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/src/package/custom_image/custom_mem_cache.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: public_member_api_docs
final class CustomNetworkImage extends StatelessWidget {
  // ignore: public_member_api_docs
  const CustomNetworkImage({
    super.key,
    this.imageUrl,
    this.emptyWidget,
    this.memCache = const CustomMemCache(height: 200, width: 200),
    this.boxFit = BoxFit.cover,
    this.loadingWidget,
    this.size,
  });

  /// Image source address
  final String? imageUrl;

  /// When image is not available then it will snow empty widget
  final Widget? emptyWidget;

  /// Default value is [CustomMemCache(height:200,width:200)]
  final CustomMemCache memCache;

  ///Default value is [BoxFit.cover]
  final BoxFit boxFit;

  ///Image size
  final Size? size;

  final Widget? loadingWidget;
  @override
  Widget build(BuildContext context) {
    final url = imageUrl;
    if (url == null || url.isEmpty) return emptyWidget ?? const SizedBox();

    return CachedNetworkImage(
      imageUrl: url,
      memCacheHeight: memCache.height,
      memCacheWidth: memCache.width,
      width: size?.width,
      height: size?.height,
      fit: boxFit,
      errorListener: (value) {
        if (kDebugMode) debugPrint('Error');
      },
      errorWidget: (context, url, error) {
        return emptyWidget ?? const SizedBox();
      },
      progressIndicatorBuilder: (context, url, progress) {
        return loadingWidget ??
            const Center(
              child: CircularProgressIndicator(),
            );
      },
    );
  }
}

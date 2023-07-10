// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  String? image;
// ignore: use_key_in_widget_constructors
  BookDetailsImage({required this.image});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: CachedNetworkImage(
        imageUrl: image!,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
        height: 180,
        width: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}

// width: 120

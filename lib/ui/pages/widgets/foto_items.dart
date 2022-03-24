import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class PhotosItems extends StatelessWidget {
  final String imageUrl;
  const PhotosItems({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageUrl,
            ),
          )),
    );
  }
}

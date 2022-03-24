import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class PintersItems extends StatelessWidget {
  final String? name;
  const PintersItems({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/fi_check-circle.png'))),
          ),
          Text(
            name!,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}

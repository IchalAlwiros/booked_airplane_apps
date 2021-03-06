import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';

class BookingDetailsItems extends StatelessWidget {
  final String? title, valueText;
  final Color valueColor;
  const BookingDetailsItems(
      {Key? key,
      required this.title,
      required this.valueText,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/fi_check-circle.png',
                ),
              ),
            ),
          ),
          Text(
            title!,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            valueText!,
            style: blackTextStyle.copyWith(
                fontWeight: semiBold, color: valueColor),
          ),
        ],
      ),
    );
  }
}

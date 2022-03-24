import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class SeatItems extends StatelessWidget {
  //NOTE : 0. Avaliable, 1. Selected, 2. Unavailable
  final int? status;

  const SeatItems({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return primaryColor;
        case 2:
          return kUnavaliableColor;
        case 3:
          return kUnavaliableColor;

        default:
          return kUnavaliableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return primaryColor;
        case 1:
          return primaryColor;
        case 2:
          return kUnavaliableColor;

        default:
          return kUnavaliableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return const SizedBox();

        default:
          return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(defaultRadius),
          border: Border.all(
            color: borderColor(),
            width: 2,
          )),
      child: child(),
    );
  }
}

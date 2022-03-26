import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/seat_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/theme.dart';

class SeatItems extends StatelessWidget {
  //NOTE : 0. Avaliable, 1. Selected, 2. Unavailable
  // final int? status;
  final String id;
  final bool isAvailable;

  const SeatItems({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvailable) {
        return kUnavaliableColor;
      } else {
        if (isSelected) {
          return primaryColor;
        } else {
          return kAvailableColor;
        }
      }
      // switch (status) {
      //   case 0:
      //     return kAvailableColor;
      //   case 1:
      //     return primaryColor;
      //   case 2:
      //     return kUnavaliableColor;
      //   case 3:
      //     return kUnavaliableColor;

      //   default:
      //     return kUnavaliableColor;
      // }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavaliableColor;
      } else {
        return primaryColor;
      }
      // switch (status) {
      //   case 0:
      //     return primaryColor;
      //   case 1:
      //     return primaryColor;
      //   case 2:
      //     return kUnavaliableColor;

      //   default:
      //     return kUnavaliableColor;
      // }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }

      // switch (status) {
      //   case 0:
      //     return const SizedBox();
      //   case 1:
      //     return Center(
      //       child: Text(
      //         'YOU',
      //         style: whiteTextStyle.copyWith(
      //           fontSize: 16,
      //           fontWeight: semiBold,
      //         ),
      //       ),
      //     );
      //   case 2:
      //     return const SizedBox();

      //   default:
      //     return const SizedBox();
      // }
    }

    return InkWell(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
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
      ),
    );
  }
}

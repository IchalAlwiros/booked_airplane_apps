import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/screen_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/home_screen.dart';
import 'package:flutter_airplane/ui/pages/settings_screen.dart';
import 'package:flutter_airplane/ui/pages/transactions_screen.dart';
import 'package:flutter_airplane/ui/pages/wallet_screen.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class MainScreen extends StatelessWidget {
//   const MainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Widget buildContent(int currentIndex) {
//       switch (currentIndex) {
//         case 0:
//           return HomaScreen();
//         case 1:
//           return TransactionScreen();
//         case 2:
//           return WalletScreen();
//         case 3:
//           return SettingsScreen();

//           break;
//         default:
//       }
//       return HomaScreen();
//     }

//     Widget customBottomNavigator() {
//       return Align(
//         alignment: Alignment.bottomCenter,
//         child: Container(
//           width: double.infinity,
//           height: 60,
//           margin: EdgeInsets.only(
//             bottom: 30,
//             left: defaultMargin,
//             right: defaultMargin,
//           ),
//           decoration: BoxDecoration(
//             color: whiteColor,
//             borderRadius: BorderRadius.circular(18),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: const [
//               CustomBottomNavigationItems(
//                 index: 0,
//                 imageUrl: 'assets/icon_home.png',
//                 // isSelected: true,
//               ),
//               CustomBottomNavigationItems(
//                 index: 1,
//                 imageUrl: 'assets/icon_booking.png',
//                 // isSelected: false,
//               ),
//               CustomBottomNavigationItems(
//                 index: 2,
//                 imageUrl: 'assets/icon_credit-card.png',
//                 // isSelected: false,
//               ),
//               CustomBottomNavigationItems(
//                 index: 3,
//                 imageUrl: 'assets/icons_settings.png',
//                 // isSelected: false,
//               ),
//             ],
//           ),
//         ),
//       );
//     }

//     return BlocBuilder<ScreenCubit, int>(
//       builder: (context, currentIndex) {
//         return Scaffold(
//           backgroundColor: kBackgroundColor,
//           body: Stack(
//             children: [
//               buildContent(currentIndex),
//               customBottomNavigator(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomaScreen();
        case 1:
          return TransactionScreen();
        case 2:
          return WalletScreen();
        case 3:
          return SettingsScreen();
        default:
          return HomaScreen();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItems(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItems(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItems(
                index: 2,
                imageUrl: 'assets/icon_credit-card.png',
              ),
              CustomBottomNavigationItems(
                index: 3,
                imageUrl: 'assets/icons_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<ScreenCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/screen_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccesCheckoutScreen extends StatelessWidget {
  const SuccesCheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              margin: EdgeInsets.only(
                bottom: 80,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/scheduling.png'),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'Are you ready to explore the new \nworld of experiences?',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CustomButtons(
              title: 'My Bookings',
              onPressed: () {
                //NOTE: KETIKA DIKLIK MAKA AKAN DINAVIGASIKAN KE PAGE INDEX KE -
                context.read<ScreenCubit>().setPage(1);
                // Navigator.pushNamedAndRemoveUntil(
                //     context, '/main', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(
                top: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}

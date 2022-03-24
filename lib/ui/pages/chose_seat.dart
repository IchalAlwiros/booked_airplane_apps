import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/checkout_screen.dart';
import 'package:flutter_airplane/ui/pages/widgets/custom_button.dart';
import 'package:flutter_airplane/ui/pages/widgets/seat_items.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //NOTE : AVALIABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/available_icon.png'))),
            ),
            Text(
              'Avaliable',
              style: blackTextStyle,
            ),
            //NOTE : SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/selected_icon.png'))),
            ),
            //NOTE : UNAVALIBLE
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/unavailable.png'))),
            ),
            Text(
              'Unavaliable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            children: [
              //NOTE : SEAT INDICATORS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //NOTE : SEAT 1
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItems(status: 2),
                    SeatItems(status: 2),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SeatItems(status: 0),
                    SeatItems(status: 2),
                  ],
                ),
              ),
              //NOTE : SEAT 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItems(status: 0),
                    SeatItems(status: 0),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SeatItems(status: 0),
                    SeatItems(status: 2),
                  ],
                ),
              ),

              //NOTE : SEAT 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItems(status: 1),
                    SeatItems(status: 1),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SeatItems(status: 0),
                    SeatItems(status: 0),
                  ],
                ),
              ),
              //NOTE : SEAT 4
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItems(status: 2),
                    SeatItems(status: 0),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SeatItems(status: 0),
                    SeatItems(status: 0),
                  ],
                ),
              ),
              //NOTE : SEAT 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatItems(status: 0),
                    SeatItems(status: 0),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SeatItems(status: 2),
                    SeatItems(status: 0),
                  ],
                ),
              ),

              //NOTE: YOUR SEAT
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Youe seat',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'A3, B3',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ),
              //NOTE TOTAL

              Container(
                margin: EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'IDR 540.000.000',
                      style: purpleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ));
    }

    Widget checkoutButton() {
      return CustomButtons(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 46,
        ),
        title: 'Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutScreen(),
            ),
          );
          ;
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}

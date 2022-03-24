import 'package:flutter/material.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/widgets/destinations_tile.dart';
import 'package:flutter_airplane/ui/pages/widgets/destinatios_card.dart';

class HomaScreen extends StatelessWidget {
  const HomaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nIchal Wira',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Howdy, \nIchal Wira',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/pic_filled.png',
              ))),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                imagerl: 'assets/image 7.png',
                city: 'Tangerang',
                ratings: 4.8,
              ),
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                imagerl: 'assets/image 7.png',
                city: 'Tangerang',
                ratings: 4.8,
              ),
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                imagerl: 'assets/image 7.png',
                city: 'Tangerang',
                ratings: 4.8,
              ),
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                imagerl: 'assets/image 7.png',
                city: 'Tangerang',
                ratings: 4.8,
              ),
              CustomDestinationsCard(
                name: 'Lake Ciliwung',
                imagerl: 'assets/image 7.png',
                city: 'Tangerang',
                ratings: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinatios() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultRadius,
          bottom: 110,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationsTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image 12.png',
              ratings: 4.5,
            ),
            DestinationsTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image 12.png',
              ratings: 4.5,
            ),
            DestinationsTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image 12.png',
              ratings: 4.5,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinatios(),
      ],
    );
  }
}

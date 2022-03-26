import 'package:flutter/material.dart';
import 'package:flutter_airplane/models/destinations_model.dart';
import 'package:flutter_airplane/shared/theme.dart';

import '../detail_screen.dart';

class DestinationsTile extends StatelessWidget {
  // final String? name, city, imageUrl;
  // final double? ratings;
  final DestinationsModel destinations;
  const DestinationsTile(
    this.destinations, {
    Key? key,
    // @required this.name,
    // @required this.city,
    // required this.imageUrl,
    // required this.ratings
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(destinations)));
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      // imageUrl!,
                      destinations.imageUrl),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // name!,
                    destinations.name,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    // city!,
                    destinations.city,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    'assets/Star 1.png',
                  ))),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${destinations.rating}',
                  // ratings.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

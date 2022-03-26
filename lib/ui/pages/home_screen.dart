import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/cubit/destinations_cubit.dart';
import 'package:flutter_airplane/models/destinations_model.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/widgets/destinations_tile.dart';
import 'package:flutter_airplane/ui/pages/widgets/destinatios_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomaScreen extends StatefulWidget {
  const HomaScreen({Key? key}) : super(key: key);

  @override
  State<HomaScreen> createState() => _HomaScreenState();
}

class _HomaScreenState extends State<HomaScreen> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<DestinationsCubit>().fetchDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                          'Howdy, \n${state.user.name}',
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
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestinations(List<DestinationsModel> destinations) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: destinations.map((DestinationsModel destinatons) {
              return CustomDestinationsCard(destinatons);
            }).toList(),

            // children: [
            // CustomDestinationsCard(
            //   // name: 'Lake Ciliwung',
            //   // imagerl: 'assets/image 7.png',
            //   // city: 'Tangerang',
            //   // ratings: 4.8,
            // ),
            // CustomDestinationsCard(
            //   name: 'Lake Ciliwung',
            //   imagerl: 'assets/image 7.png',
            //   city: 'Tangerang',
            //   ratings: 4.8,
            // ),
            // CustomDestinationsCard(
            //   name: 'Lake Ciliwung',
            //   imagerl: 'assets/image 7.png',
            //   city: 'Tangerang',
            //   ratings: 4.8,
            // ),
            // CustomDestinationsCard(
            //   name: 'Lake Ciliwung',
            //   imagerl: 'assets/image 7.png',
            //   city: 'Tangerang',
            //   ratings: 4.8,
            // ),
            // CustomDestinationsCard(
            //   name: 'Lake Ciliwung',
            //   imagerl: 'assets/image 7.png',
            //   city: 'Tangerang',
            //   ratings: 4.8,
            // ),
            // ],
          ),
        ),
      );
    }

    Widget newDestinatios(List<DestinationsModel> destinations) {
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

            Column(
              children: destinations.map((DestinationsModel destinatons) {
                return DestinationsTile(destinatons);
              }).toList(),
            )

            // DestinationsTile(
            //   name: 'Danau Beratan',
            //   city: 'Singaraja',
            //   imageUrl: 'assets/image 12.png',
            //   ratings: 4.5,
            // ),
            // DestinationsTile(
            //   name: 'Danau Beratan',
            //   city: 'Singaraja',
            //   imageUrl: 'assets/image 12.png',
            //   ratings: 4.5,
            // ),
            // DestinationsTile(
            //   name: 'Danau Beratan',
            //   city: 'Singaraja',
            //   imageUrl: 'assets/image 12.png',
            //   ratings: 4.5,
            // ),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationsCubit, DestinationsState>(
        listener: (context, state) {
      // TODO: implement listener
      if (state is DestinationsFailed) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: redColor,
            content: Text(state.error),
          ),
        );
      }
    }, builder: (context, state) {
      if (state is DestinationsSuccess) {
        return ListView(
          children: [
            header(),
            popularDestinations(state.destinations),
            newDestinatios(state.destinations),
          ],
        );
      }
      return Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}

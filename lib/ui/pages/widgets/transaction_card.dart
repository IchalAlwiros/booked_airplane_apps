import 'package:flutter/material.dart';
import 'package:flutter_airplane/models/transaction_model.dart';
import 'package:flutter_airplane/ui/pages/widgets/booking_details_items.dart';
import 'package:intl/intl.dart';

import '../../../shared/theme.dart';

// class TransactionCard extends StatelessWidget {
//   final TransactionModel transaction;

//   const TransactionCard(this.transaction, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 30),
//       padding: EdgeInsets.symmetric(
//         vertical: 30,
//         horizontal: 20,
//       ),
//       decoration: BoxDecoration(
//         color: whiteColor,
//         borderRadius: BorderRadius.circular(
//           defaultRadius,
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //NOTE : DESTINATION TILE
//           Row(
//             children: [
//               Container(
//                 height: 70,
//                 width: 70,
//                 margin: EdgeInsets.only(right: 16),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(defaultRadius),
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: NetworkImage(
//                       transaction.destinations.imageUrl,
//                       // 'assets/image 15.png',
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       transaction.destinations.name,
//                       // 'Dolan',
//                       style: blackTextStyle.copyWith(
//                         fontSize: 18,
//                         fontWeight: medium,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       transaction.destinations.city,
//                       // 'Tangerang',
//                       style: greyTextStyle.copyWith(
//                         fontWeight: light,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     width: 19,
//                     height: 19,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage(
//                       'assets/Star 1.png',
//                     ))),
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     transaction.destinations.rating.toString(),
//                     // '4.5',
//                     style: blackTextStyle.copyWith(
//                       fontWeight: medium,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           //NOTE : BOOKING DETAILS
//           Container(
//             margin: EdgeInsets.only(top: 30),
//             child: Text(
//               'Booking Details',
//               style: blackTextStyle.copyWith(
//                 fontSize: 16,
//                 fontWeight: semiBold,
//               ),
//             ),
//           ),

//           //NOTE : BOOKING DETAILS FORM
//           BookingDetailsItems(
//             title: 'Treveler',
//             valueText: '${transaction.amountOfTraveler} Person',
//             valueColor: blackColor,
//           ),
//           BookingDetailsItems(
//             title: 'Seat',
//             valueText: transaction.selectedSeats,
//             valueColor: blackColor,
//           ),
//           BookingDetailsItems(
//             title: 'Insurance',
//             valueText: transaction.insurance ? 'Yes' : 'No',
//             valueColor: transaction.insurance ? greenColor : redColor,
//           ),
//           BookingDetailsItems(
//             title: 'Refundable',
//             valueText: transaction.insurance ? 'Yes' : 'No',
//             valueColor: transaction.insurance ? redColor : greenColor,
//           ),
//           BookingDetailsItems(
//             title: 'VAT',
//             valueText:
//                 '${(transaction.vat * 100).toStringAsFixed(0)}', //toStringAsFixed ini untuk menghilangkan 0,
//             valueColor: blackColor,
//           ),
//           BookingDetailsItems(
//             title: 'Price',
//             valueText: NumberFormat.currency(
//               locale: 'id',
//               symbol: 'IDR ',
//               decimalDigits: 0,
//             ).format(transaction.price),
//             valueColor: blackColor,
//           ),
//           BookingDetailsItems(
//             title: 'Grand Total',
//             valueText: NumberFormat.currency(
//               locale: 'id',
//               symbol: 'IDR ',
//               decimalDigits: 0,
//             ).format(transaction.grandTotal),
//             valueColor: blackColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // NOTE: DESTINATION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(transaction.destination.imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/Star 1.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // NOTE: BOOKING DETAILS TEXT
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          // NOTE: BOOKING DETAILS ITEMS
          BookingDetailsItems(
            title: 'Traveler',
            valueText: '${transaction.amountOfTraveler} person',
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: 'Seat',
            valueText: transaction.selectedSeats,
            valueColor: blackColor,
          ),
          BookingDetailsItems(
            title: 'Insurance',
            valueText: transaction.insurance ? 'YES' : 'NO',
            valueColor: transaction.insurance ? greenColor : redColor,
          ),
          BookingDetailsItems(
            title: 'Refundable',
            valueText: transaction.refundable ? 'YES' : 'NO',
            valueColor: transaction.refundable ? greenColor : redColor,
          ),

          BookingDetailsItems(
            title: 'VAT',
            valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
            valueColor: blackColor,
          ),

          BookingDetailsItems(
            title: 'Price',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.price),
            valueColor: blackColor,
          ),

          BookingDetailsItems(
            title: 'Grand Total',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.grandTotal),
            valueColor: primaryColor,
          ),
        ],
      ),
    );
  }
}

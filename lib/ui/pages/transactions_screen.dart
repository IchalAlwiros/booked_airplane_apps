import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/transction_cubit.dart';
import 'package:flutter_airplane/shared/theme.dart';
import 'package:flutter_airplane/ui/pages/widgets/transaction_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class TransactionScreen extends StatefulWidget {
//   const TransactionScreen({Key? key}) : super(key: key);

//   @override
//   State<TransactionScreen> createState() => _TransactionScreenState();
// }

// class _TransactionScreenState extends State<TransactionScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     context.read<TransactionCubit>().fetchTransactions();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<TransactionCubit, TransactionState>(
//       builder: (context, state) {
//         if (state is TransactionLoading) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         } else if (state is TransactionSucces) {
//           //NOTE : PENGKONDISIAN JIKA PANJANG DATA == 0 alias belum ada transaksi
//           if (state.transactions.length == 0) {
//             return Center(
//               child: Text(
//                 'Kamu Belum Melakukan Transaksi',
//               ),
//             );
//           } else {
//             return ListView.builder(
//                 itemCount: state.transactions.length,
//                 padding: EdgeInsets.symmetric(horizontal: defaultMargin),
//                 itemBuilder: (context, index) {
//                   return TransactionCard(state.transactions[index]);
//                 });
//           }
//         }

//         return Center(
//           child: Text('Transaction'),
//         );
//       },
//     );
//   }
// }
class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionScreen> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transactions.length == 0) {
            return Center(
              child: Text('Kamu belum memiliki transaksi'),
            );
          } else {
            return ListView.builder(
                itemCount: state.transactions.length,
                padding: EdgeInsets.only(
                  right: defaultMargin,
                  left: defaultMargin,
                  top: defaultMargin,
                  bottom: 100,
                ),
                itemBuilder: (context, index) {
                  return TransactionCard(
                    state.transactions[index],
                  );
                });
          }
        }

        return Center(
          child: Text('Transaction Page'),
        );
      },
    );
  }
}

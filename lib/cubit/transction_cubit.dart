import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_airplane/models/transaction_model.dart';
import 'package:flutter_airplane/services/transaction_service.dart';

part 'transction_state.dart';

class TransctionCubit extends Cubit<TransctionState> {
  TransctionCubit() : super(TransctionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSucces());
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}

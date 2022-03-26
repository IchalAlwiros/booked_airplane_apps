part of 'transction_cubit.dart';

abstract class TransctionState extends Equatable {
  const TransctionState();

  @override
  List<Object> get props => [];
}

class TransctionInitial extends TransctionState {}

class TransactionLoading extends TransctionState {}

class TransactionSucces extends TransctionState {}

class TransactionFailed extends TransctionState {
  final String error;

  TransactionFailed(this.error);

  @override
  List<Object> get props => [error];
}

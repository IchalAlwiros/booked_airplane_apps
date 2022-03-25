import 'package:equatable/equatable.dart';

class UsersModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  UsersModel({
    required this.id,
    required this.email,
    required this.name,
    this.hobby = '',
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

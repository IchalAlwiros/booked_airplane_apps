import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class ScreenCubit extends Cubit<int> {
  ScreenCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}

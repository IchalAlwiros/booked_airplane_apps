import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    print('prev state : $state');
//NOTE : JIKA BELUM DI PILIH MAKA AKAN DITAMBAHKAN, KETIKA SUDAH DIPILIH MAKA TIDAK DITAMBAHKAN ATAU NILAI DIDALAM LIST TETAP
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    print('new state : $state');
    print(state);
    // emit(state);
    emit(List.from(
        state)); //NOTE : MEMBUAT INTANCE BARU (JADI DISETIAP PERUBAHAN AKAN LANGSUNG MENDAPATKAN PERUBAHAN TANPA HARUS DI SAVE ULANG)
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    print('index: $index');
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}

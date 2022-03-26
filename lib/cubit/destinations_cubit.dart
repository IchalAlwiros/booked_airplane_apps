import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_airplane/models/destinations_model.dart';
import 'package:flutter_airplane/services/destinations_services.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationsLoading());
      List<DestinationsModel> destinations =
          await DestinationsServices().fetchDdestinations();
      emit(DestinationsSuccess(destinations));
    } catch (e) {
      emit(
        DestinationsFailed(
          e.toString(),
        ),
      );
    }
  }
}

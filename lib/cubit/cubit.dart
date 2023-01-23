import 'package:basketball_points/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  // ignore: non_constant_identifier_names
  int Apoints = 0;
  // ignore: non_constant_identifier_names
  int Bpoints = 0;

  CounterCubit() : super(Astate());

  // ignore: non_constant_identifier_names
  void AteamIncrement({required int button}) {
    Apoints += button;
    emit(Astate());
  }

  // ignore: non_constant_identifier_names
  void BteamIncrement({required int button}) {
    Bpoints += button;
    emit(Bstate());
  }

  void reset() {
    Apoints = 0;
    Bpoints = 0;
    emit(Reset());
  }
}

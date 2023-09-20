import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'games_event.dart';
part 'games_state.dart';

class GamesBloc extends Bloc<GamesEvent, GamesState> {
  GamesBloc() : super(GamesInitial()) {
    on<GamesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

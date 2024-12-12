import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'blocfor_event.dart';
part 'blocfor_state.dart';

class BlocforBloc extends Bloc<BlocforEvent, BlocforState> {
  BlocforBloc() : super(BlocforInitial()) {
    on<BlocforEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

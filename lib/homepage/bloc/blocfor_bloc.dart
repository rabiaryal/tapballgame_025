import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'blocfor_event.dart';
part 'blocfor_state.dart';

class BlocforBloc extends Bloc<EventsForBLoc, StateForBLoc> {
  BlocforBloc() : super(BlocforInitial()) {
    on<PressButton>(_buttonPressed);
    on<BallTouchedUpper>(_deflectBall);
    on<BallTouchedBar>(_keepAliveBall);
    on<BallTouchedLower>(_finishGame);
    on<UpdateScore>(_updateScore);
    on<NextBallLocation>(_nextPosition);
  }



  void _deflectBall(BallTouchedUpper event, Emitter<StateForBLoc> emit) {}

  
  void _keepAliveBall(BallTouchedBar event, Emitter<StateForBLoc> emit) {}

  
  void _finishGame(BallTouchedLower event, Emitter<StateForBLoc> emit) {}
  
  void _updateScore(UpdateScore event, Emitter<StateForBLoc> emit) {}
  
  void _nextPosition(NextBallLocation event, Emitter<StateForBLoc> emit) {}
  void _buttonPressed(PressButton event, Emitter<StateForBLoc> emit) {}
}


// (event, emit) {
     
//     }
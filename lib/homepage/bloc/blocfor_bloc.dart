import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'blocfor_event.dart';
part 'blocfor_state.dart';

class BlocforBloc extends Bloc<EventsForBLoc, StateForBLoc> {
  final Rect movingBar;

  BlocforBloc({required this.movingBar})
      : super(StateForBLoc(initialScore: 0, position: Offset.zero)) {
    on<ButtonPressed>(_buttonPressed);
    on<CollisionWithContainer>(_deflectBall);
    on<CollisionWithBar>(_keepAliveBall);
    on<GameOver>(_finishGame);
    on<UpdateScore>(_updateScore);
    on<NextLocation>(_nextPosition);
  }

  void _buttonPressed(ButtonPressed event, Emitter<StateForBLoc> emit) {
    // Example: Reset game logic
    emit(StateForBLoc(initialScore: 0, position: Offset.zero));
  }

  void _deflectBall(CollisionWithContainer event, Emitter<StateForBLoc> emit) {
    // Handle ball deflection logic
    // Example: Change ball direction
    final updatedPosition = Offset(-event.position.dx, -event.position.dy);
    emit(state.copyWith(position: updatedPosition));
  }

  void _keepAliveBall(CollisionWithBar event, Emitter<StateForBLoc> emit) {
    // Keep ball alive logic, e.g., bounce from the bar
    const Size movingBarSize = Size(60, 20);
    final Rect movingBall = Rect.fromLTWH(
      event.position.dx,
      event.position.dy,
      movingBarSize.width,
      movingBarSize.height,
    );

    if (movingBall.overlaps(movingBar)) {
      // Reverse ball direction upon collision
      final updatedPosition = Offset(-event.position.dx, -event.position.dy);
      emit(state.copyWith(position: updatedPosition));
    }
  }

  void _finishGame(GameOver event, Emitter<StateForBLoc> emit) {
    // End the game logic
    emit(state.copyWith(initialScore: 0, position: Offset.zero));
  }

  void _updateScore(UpdateScore event, Emitter<StateForBLoc> emit) {
    // Increment score
    emit(state.copyWith(initialScore: state.initialScore + event.currentScore));
  }

  void _nextPosition(NextLocation event, Emitter<StateForBLoc> emit) {
    // Update the ball's position
    emit(state.copyWith(position: event.position));
  }
}




// import 'dart:ui';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'blocfor_event.dart';
// part 'blocfor_state.dart';

// class BlocforBloc extends Bloc<EventsForBLoc, StateForBLoc> {
//   final Rect movingBar;
//   BlocforBloc({required this.movingBar})
//       : super(StateForBLoc(initialScore: 5, position: Offset(0, 0))) {
//     on<ButtonPressed>(_buttonPressed);
//     on<CollisionWithContainer>(_deflectBall);
//     on<CollisionWithBar>(_keepAliveBall);
//     on<GameOver>(_finishGame);
//     on<UpdateScore>(_updateScore);
//     on<NextLocation>(_nextPosition);
//   }

//   void _deflectBall(CollisionWithContainer event, Emitter<StateForBLoc> emit) {}

//   void _keepAliveBall(CollisionWithBar event, Emitter<StateForBLoc> emit) {
//     const Size MovingBarSize = Size(60, 20);

//     final Rect movingBall = Rect.fromLTWH(event.position.dx, event.position.dy,
//         MovingBarSize.width, MovingBarSize.height);
//   }

//   void _finishGame(GameOver event, Emitter<StateForBLoc> emit) {}

//   void _updateScore(UpdateScore event, Emitter<StateForBLoc> emit) {}

//   void _nextPosition(NextLocation event, Emitter<StateForBLoc> emit) {}
//   void _buttonPressed(event, Emitter<StateForBLoc> emit) {}
// }

part of 'blocfor_bloc.dart';

abstract class EventsForBLoc extends Equatable {
  const EventsForBLoc();

  List<Object> get probs => [];
}

class Initialize extends EventsForBLoc {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NextBallLocation extends EventsForBLoc {
  @override
  
  List<Object?> get props => [];
}

class PressButton extends EventsForBLoc {
  const PressButton({
    required this.onPress,
  });
  final VoidCallback onPress;

  @override
  // TODO: implement props
  List<Object?> get props => [onPress];
}

// here upper body denotes the top + left + right side or expect buttom side

class BallTouchedUpper extends EventsForBLoc {
  const BallTouchedUpper({
    required this.x,
    required this.y,
  });
 final  int x;
  final int y;

  @override
  // TODO: implement props
  List<Object?> get props => [x,y];
}

class BallTouchedBar extends EventsForBLoc {
  const BallTouchedBar({
    required this.onTouch,
  });
  final VoidCallback onTouch;

  @override
  // TODO: implement props
  List<Object?> get props => [onTouch];
}

class BallTouchedLower extends EventsForBLoc {
  const BallTouchedLower({
    required this.onTouch,
  });
  final VoidCallback onTouch;

  @override
  // TODO: implement props
  List<Object?> get props => [onTouch];
}

class UpdateScore extends EventsForBLoc {
  const UpdateScore({required this.currentScore});
  final int currentScore;

  @override
  // TODO: implement props
  List<Object?> get props => [currentScore];
}

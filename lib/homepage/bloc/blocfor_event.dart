part of 'blocfor_bloc.dart';

abstract class EventsForBLoc extends Equatable {
  const EventsForBLoc();

  List<Object> get probs => [];
}

class ButtonPressed extends EventsForBLoc {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Initialize extends EventsForBLoc {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PassMessage extends EventsForBLoc {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NextLocation extends EventsForBLoc {
  NextLocation({
    required this.position,
  });
  final Offset position;
  @override
  List<Object?> get props => [];
}

class CollisionWithContainer extends EventsForBLoc {
   CollisionWithContainer({
    required this.position,
  });
  final Offset position;
  @override
  // TODO: implement props
  List<Object?> get props => [position];
}

class CollisionWithBar extends EventsForBLoc {
  CollisionWithBar({
    required this.position,
  });
  final Offset position;
  @override
  // TODO: implement props
  List<Object?> get props => [position];
}

class GameOver extends EventsForBLoc {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UpdateScore extends EventsForBLoc {
  const UpdateScore({required this.currentScore});
  final int currentScore;

  @override
  // TODO: implement props
  List<Object?> get props => [currentScore];
}

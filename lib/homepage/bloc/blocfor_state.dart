part of 'blocfor_bloc.dart';

class StateForBLoc extends Equatable {
  StateForBLoc(
      {required this.initialScore,  required this.position});
  final int initialScore;
  Offset position;

  StateForBLoc copyWith({
    int? initialScore,
    Offset? position,
  }) {
    return StateForBLoc(
      initialScore: initialScore ?? this.initialScore,
      position: position ?? this.position
    
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [initialScore, position];
}

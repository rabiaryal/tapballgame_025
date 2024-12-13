part of 'blocfor_bloc.dart';

class StateForBLoc extends Equatable {
  StateForBLoc({
    
    required this.initialScore,
    required this.x_Cood,
    required this.y_Cood
  });
  final int initialScore;
  final int x_Cood;
  final int y_Cood;
 
  StateForBLoc copyWith({
     int? initialScore,
   int? x_Cood,
   int? y_Cood,
  }) {
    return StateForBLoc(
      initialScore: initialScore?? this.initialScore,
      x_Cood:  x_Cood?? this.x_Cood,
      y_Cood: y_Cood?? this.y_Cood,
      
   
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [initialScore, x_Cood,y_Cood];
}

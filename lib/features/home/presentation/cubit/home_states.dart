class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeBottomNav extends HomeStates {}

class HomeSuccess extends HomeStates {}

class HomeLoading extends HomeStates {}

class HomeFailure extends HomeStates {
  final String errorMessage;
  HomeFailure({required this.errorMessage});

}

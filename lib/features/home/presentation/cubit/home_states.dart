class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeBottomNav extends HomeStates {}

class RecommendedSuccess extends HomeStates {}

class RecommendedLoading extends HomeStates {}

class RecommendedFailure extends HomeStates {
  final String errorMessage;
  RecommendedFailure({required this.errorMessage});
}
class IsFavourite extends HomeStates {}


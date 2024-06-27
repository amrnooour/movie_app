class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeBottomNav extends HomeStates {}

class PopularSuccess extends HomeStates {}

class PopularLoading extends HomeStates {}

class PopularFailure extends HomeStates {
  final String errorMessage;
  PopularFailure({required this.errorMessage});
}
class UpcomingSuccess extends HomeStates {}

class UpcomingLoading extends HomeStates {}

class UpcomingFailure extends HomeStates {
  final String errorMessage;
  UpcomingFailure({required this.errorMessage});
}
class RecommendedSuccess extends HomeStates {}

class RecommendedLoading extends HomeStates {}

class RecommendedFailure extends HomeStates {
  final String errorMessage;
  RecommendedFailure({required this.errorMessage});
}

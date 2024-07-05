class UpcomingStates{}
class UpcomingInitail extends UpcomingStates{}
class UpcomingSuccess extends UpcomingStates {}

class UpcomingLoading extends UpcomingStates {}

class UpcomingFailure extends UpcomingStates {
  final String errorMessage;
  UpcomingFailure({required this.errorMessage});
}
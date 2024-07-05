class PopularStates{}
class PopularIntial extends PopularStates{}
class PopularSuccess extends PopularStates {}

class PopularLoading extends PopularStates {}

class PopularFailure extends PopularStates {
  final String errorMessage;
  PopularFailure({required this.errorMessage});
}
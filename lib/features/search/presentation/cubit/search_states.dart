class SearchStates {}

class SearchIntial extends SearchStates {}

class SearchLoading extends SearchStates {}

class SearchSuccess extends SearchStates {}

class SearchFailure extends SearchStates {
  final String errorMessage;
  SearchFailure({required this.errorMessage});
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/search/data/model/search_model.dart';
import 'package:movie_app/features/search/data/repos/search_repo.dart';
import 'package:movie_app/features/search/presentation/cubit/search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchRepo searchRepo;
  SearchCubit(this.searchRepo) : super(SearchIntial());
  SearchModel? searchModel;
  String query = "";

  search() async {
    emit(SearchLoading());
    final response = await searchRepo.searchMethoud(query);
    response.fold((erroe) => emit(SearchFailure(errorMessage: erroe)),
        (success) {
      searchModel = success;
      emit(SearchSuccess());
    });
  }
}

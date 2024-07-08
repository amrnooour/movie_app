import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/popular_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/popular_states.dart';

class PopularCubit extends Cubit<PopularStates> {
  HomeRepo homeRepo;
  PopularCubit(this.homeRepo) : super(PopularIntial());
  PopularModel? popularModel;

  fetchPopularMovie() async {
    emit(PopularLoading());
    final response = await homeRepo.popualrMovie();
    response.fold((error) => emit(PopularFailure(errorMessage: error)),
        (success) {
      popularModel = success;
      emit(PopularSuccess());
    });
  }
}

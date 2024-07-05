import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/recommended_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  int currentIndex = 0;
  RecommendedModel? recommendedModel;

  changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }

  fetchRecommendedgMovie() async {
    emit(RecommendedLoading());
    final response = await homeRepo.recommendedMovie();
    response.fold((error) => emit(RecommendedFailure(errorMessage: error)),
        (success) {
      recommendedModel = success;
      emit(RecommendedSuccess());
    });
  }
}

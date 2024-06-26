import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/popular_model.dart';
import 'package:movie_app/features/home/data/models/upcoming_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  int currentIndex = 0;
  PopularModel? popularModel;
  UpcomingModel? upcomingModel;

  changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }

  fetchPopularMovie() async {
    emit(PopularLoading());
    final response = await homeRepo.popualrMovie();
    response.fold((error) => emit(PopularFailure(errorMessage: error)),
        (success) {
      popularModel = success;
      emit(PopularSuccess());
    });
  }

  fetchUpcomingMovie() async {
    emit(UpcomingLoading());
    final response = await homeRepo.upcomingMovie();
    response.fold((error) => emit(UpcomingFailure(errorMessage: error)),
        (success) {
      upcomingModel = success;
      emit(UpcomingSuccess());
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/popular_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(HomeInitial());

  int currentIndex = 0;
  PopularModel? popularModel;

  changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }

  fetchPopularMovie() async {
    emit(HomeLoading());
    final response = await homeRepo.popualrMovie();
    response.fold((error) => emit(HomeFailure(errorMessage: error)), (success) {
      popularModel = success;
      emit(HomeSuccess());
    });
  }
}

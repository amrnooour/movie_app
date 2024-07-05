import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/data/models/upcoming_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/upcoming_states.dart';

class UpcomingCubit extends Cubit<UpcomingStates> {
  HomeRepo homeRepo;
  UpcomingCubit(this.homeRepo) : super(UpcomingInitail());
  UpcomingModel? upcomingModel;


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

import 'package:bloc/bloc.dart';
import 'package:movie_app/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;

  changeBottomNavIndex(int index) {
    currentIndex = index;
    emit(HomeBottomNav());
  }
}

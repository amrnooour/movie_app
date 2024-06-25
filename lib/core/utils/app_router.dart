import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';
import 'package:movie_app/features/splash/splash.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: "/homeView",builder: (context, state) => BlocProvider(
    create: (context) => HomeCubit(),
    child: const HomeView()),),
]);

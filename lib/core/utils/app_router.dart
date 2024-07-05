import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/api/dio_consumer.dart';
import 'package:movie_app/features/home/data/models/details_popular_model.dart';
import 'package:movie_app/features/home/data/repos/home_repo.dart';
import 'package:movie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/popular_cubit.dart';
import 'package:movie_app/features/home/presentation/cubit/upcoming_cubit.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/details_popular_view.dart';
import 'package:movie_app/features/splash/splash.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: "/homeView",builder: (context, state) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => HomeCubit(HomeRepo(DioConsumer(dio: Dio()))),),
      BlocProvider(create: (context) => UpcomingCubit(HomeRepo(DioConsumer(dio: Dio()))),),
      BlocProvider(create: (context) => PopularCubit(HomeRepo(DioConsumer(dio: Dio()))),),
    ],
    child: const HomeView())),
  GoRoute(path: "/detailsPopular",builder: (context, state) => 
   BlocProvider(
    create: (context) => HomeCubit(HomeRepo(DioConsumer(dio: Dio()))),
    child: DetailsPopularView(detailsPopularModel: state.extra as DetailsPopularModel)),),

]);

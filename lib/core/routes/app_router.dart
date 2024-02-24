import 'package:go_router/go_router.dart';
import 'package:movie_app/feature/home/presentation/views/home.dart';
import 'package:movie_app/feature/splash/splash.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: "/home",builder: (context, state) => const Home(),),
]);
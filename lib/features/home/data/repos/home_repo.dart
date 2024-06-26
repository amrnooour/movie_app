import 'package:movie_app/core/api/dio_consumer.dart';
import 'package:movie_app/core/utils/constants.dart';
import 'package:movie_app/features/home/data/models/popular_model.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/data/models/upcoming_model.dart';

class HomeRepo {
  DioConsumer dioConsumer;
  HomeRepo(this.dioConsumer);

  Future<Either<String, PopularModel>> popualrMovie() async {
    String popular = "${Constants.popular}${Constants.apiKey}";
    try {
      final response = await dioConsumer.get(popular);
      final data = PopularModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
  Future<Either<String, UpcomingModel>> upcomingMovie() async {
    String popular = "${Constants.upcoming}${Constants.apiKey}";
    try {
      final response = await dioConsumer.get(popular);
      final data = UpcomingModel.fromJson(response);
      return right(data);
    } catch (e) {
      return left(e.toString());
    }
  }
}

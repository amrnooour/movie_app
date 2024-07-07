import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/features/search/data/model/search_model.dart';

class SearchRepo {
  Dio dio;
  SearchRepo(this.dio);

  Future<Either<String, SearchModel>> searchMethoud(String query) async {
    try {
      String path =
          "https://api.themoviedb.org/3/search/movie?api_key=936d9a394d36e540de9f4953662624ae";
      final response = await dio.get("$path&query=$query");
      var result = SearchModel.fromJson(response.data);
      return right(result);
    } catch (e) {
      return left(e.toString());
    }
  }
}

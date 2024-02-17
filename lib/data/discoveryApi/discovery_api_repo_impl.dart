import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:discovery_app/core/exceptions.dart';
import 'package:discovery_app/data/discoveryApi/discovery_api_repo.dart';
import 'package:discovery_app/data/discoveryApi/models/discovery_api_model.dart';
import 'package:discovery_app/utils/logger.dart';

class DiscoveryApiRepoImpl implements DiscoveryApiRepo {

  @override
  Future<Either<ApiException, DiscoveryApiResponseModel>> fetchDiscoveryData(int pageNumber) async {
    try {
      final Response response = await Dio().get(
        "https://api-stg.together.buzz/mocks/discovery?page=$pageNumber&limit=10"
      );
      Logger.printSuccess(response.data.toString());
      return Right(DiscoveryApiResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
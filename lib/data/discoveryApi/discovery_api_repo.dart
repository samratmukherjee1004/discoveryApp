import 'package:dartz/dartz.dart';
import 'package:discovery_app/core/exceptions.dart';
import 'package:discovery_app/data/discoveryApi/models/discovery_api_model.dart';

abstract class DiscoveryApiRepo {
  Future<Either<ApiException, DiscoveryApiResponseModel>> fetchDiscoveryData(int pageNumber);
}
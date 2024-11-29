import 'package:bookly/Features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly/core/util/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// This is our global ServiceLocator
final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices( dio: Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
     apiServices: getIt.get<ApiServices>(), 
    )
    );
}
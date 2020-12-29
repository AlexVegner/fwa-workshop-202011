import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:network/cubits/articles/articles_cubit.dart';
import 'package:network/services/articles/articles_service.dart';

final getIt = GetIt.instance;

void setupInjections() {
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<ArticlesService>(
      () => ArticlesServiceImpl(client: getIt()));
  getIt.registerFactory<ArticlesCubit>(
      () => ArticlesCubit(articlesService: getIt()));
}

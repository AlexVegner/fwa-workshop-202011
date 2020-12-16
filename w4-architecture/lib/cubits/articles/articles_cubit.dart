import 'package:meta/meta.dart';
import 'package:network/models/articles/ext_news_response.dart';
import 'package:network/services/articles/articles_service.dart';

class ArticlesCubit {
  final ArticlesService articlesService;
  ArticlesCubit({@required this.articlesService});

  Future<List<Article>> getNews() {
    return articlesService.getNews();
  }
}

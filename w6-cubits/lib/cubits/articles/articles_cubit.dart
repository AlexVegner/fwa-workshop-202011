import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:network/models/articles/article_state.dart';
import 'package:network/models/articles/ext_news_response.dart';
import 'package:network/services/articles/articles_service.dart';

class ArticlesCubit extends Cubit<ArticleState> {
  final ArticlesService articlesService;
  ArticlesCubit({@required this.articlesService})
      : super(
          ArticleState.init(),
        );
  Future<void> init() async {
    final fromDate = DateTime.now().subtract(Duration(days: 15));
    emit(ArticleState(
      fromDate: fromDate,
      atricles: [],
    ));
    await _getArticlesFromDate(fromDate);
  }

  Future<void> decrement() async {
    final fromDate = state.fromDate.subtract(Duration(days: 1));
    emit(ArticleState(
      fromDate: fromDate,
      atricles: [],
      error: null,
    ));

    await _getArticlesFromDate(fromDate);
  }

  Future<void> _getArticlesFromDate(DateTime fromDate) async {
    try {
      final news = await articlesService.getNews(
          from: fromDate.toIso8601String().substring(0, 10));
      if (news != null) {
        emit(state.copy(
          (b) => b
            ..atricles = news
            ..error = null,
        ));
      } else {
        emit(state.copy(
          (b) => b..error = 'Error: No data',
        ));
      }
    } catch (e) {
      emit(
        state.copy((b) => b..error = 'Error: ${e.toString()}'),
      );
    }
  }

  Future<List<Article>> getNews() {
    return articlesService.getNews();
  }
}

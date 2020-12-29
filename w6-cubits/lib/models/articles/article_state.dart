import 'package:equatable/equatable.dart';
import 'package:mutable_copy/mutable_copy.dart';
import 'package:network/models/articles/ext_news_response.dart';

class ArticleState with EquatableMixin {
  final DateTime fromDate;
  final List<Article> atricles;
  final String error;

  ArticleState({
    this.fromDate,
    this.atricles,
    this.error,
  });

  factory ArticleState.init() {
    return ArticleState(atricles: [], fromDate: null, error: null);
  }

  @override
  List<Object> get props {
    return [fromDate, atricles, error];
  }

  ArticleState copyWith({
    DateTime fromDate,
    List<Article> atricles,
    String error,
  }) {
    return ArticleState(
      fromDate: fromDate ?? this.fromDate,
      atricles: atricles ?? this.atricles,
      error: error ?? this.atricles,
    );
  }
}

class ArticleStateMutable with Mutable<ArticleState> {
  DateTime fromDate;
  List<Article> atricles;
  String error;

  ArticleStateMutable({
    this.fromDate,
    this.atricles,
    this.error,
  });

  @override
  ArticleState copy() {
    return ArticleState(
      fromDate: fromDate,
      atricles: atricles,
      error: error,
    );
  }
}

extension ArticleStateMutableCopyExt on ArticleState {
  ArticleStateMutable mutableCopy() {
    return ArticleStateMutable(
      fromDate: fromDate,
      atricles: atricles,
      error: error,
    );
  }

  ArticleState copy(UpdateWith<ArticleStateMutable> updateWith) {
    return updateWith(mutableCopy()).copy();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network/cubits/articles/articles_cubit.dart';
import 'package:network/models/articles/article_state.dart';
import 'package:network/models/articles/ext_news_response.dart';

class ArticlesListPage extends StatefulWidget {
  ArticlesListPage({Key key}) : super(key: key);

  @override
  _ArticlesListPageState createState() => _ArticlesListPageState();
}

class _ArticlesListPageState extends State<ArticlesListPage> {
  @override
  void initState() {
    super.initState();
    context.read<ArticlesCubit>().init();
  }

  Widget _buildItem(BuildContext context, int index, List<Article> articles) {
    return Card(
      child: ListTile(
        title: Text(articles[index].title ?? ''),
        subtitle: Text(articles[index].author ?? ''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News list'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {
          context.read<ArticlesCubit>().decrement();
        },
      ),
      body: BlocConsumer<ArticlesCubit, ArticleState>(
        listenWhen: (ArticleState previous, ArticleState current) {
          return previous.error == null && current.error != null;
        },
        listener: (BuildContext context, ArticleState state) {
          _showMaterialDialog(state.error);
        },
        builder: (BuildContext context, ArticleState state) {
          if (state.atricles != null && state.atricles.isNotEmpty) {
            return (state.atricles?.length ?? 0) == 0
                ? Center(
                    child: Text('No data'),
                  )
                : ListView.builder(
                    itemCount: state.atricles.length,
                    itemBuilder: (BuildContext context, int index) =>
                        _buildItem(context, index, state.atricles),
                  );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  _showMaterialDialog(String error) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              title: new Text('Alert'),
              content: new Text(error),
              actions: <Widget>[
                FlatButton(
                  child: Text('ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ));
  }
}

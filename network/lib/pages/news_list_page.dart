import 'package:flutter/material.dart';
import 'package:network/models/articles/ext_news_response.dart';
import 'package:network/services/ext_news_service.dart';

class NewsListPage extends StatefulWidget {
  NewsListPage({Key key}) : super(key: key);

  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  ExtNewsService extNewsService;
  List<Article> _articleList;

  @override
  void initState() {
    super.initState();
    extNewsService = ExtNewsServiceImpl();
    _getNews();
  }

  Future<void> _getNews() async {
    final list = await extNewsService.getNews();
    if (mounted) {
      setState(() {
        _articleList = list;
      });
    }
  }

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_articleList[index].title ?? ''),
        subtitle: Text(_articleList[index].author ?? ''),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('News list'),
  //     ),
  //     body: (_articleList?.length ?? 0) == 0
  //         ? Center(
  //             child: Text('No data'),
  //           )
  //         : ListView.builder(
  //             itemCount: _articleList.length,
  //             itemBuilder: _buildItem,
  //           ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News list'),
      ),
      body: FutureBuilder<List<Article>>(
        future: extNewsService.getNews(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            return (_articleList?.length ?? 0) == 0
                ? Center(
                    child: Text('No data'),
                  )
                : ListView.builder(
                    itemCount: _articleList.length,
                    itemBuilder: _buildItem,
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
}

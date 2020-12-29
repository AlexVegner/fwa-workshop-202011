import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:network/models/articles/ext_news_response.dart';

const _apiKey = 'ff12689801f5481181c901c5e23c7f49';
const _apiBaseUrl = 'https://newsapi.org/v2';
const _everythingEndpoint = '$_apiBaseUrl/everything';

abstract class ArticlesService {
  Future<List<Article>> getNews({String from});
}

class ArticlesServiceImpl implements ArticlesService {
  final http.Client client;
  ArticlesServiceImpl({@required this.client});

  @override
  Future<List<Article>> getNews(
      {String tag = 'bitcoin',
      String from = '2020-11-15',
      String sortBy = 'publishedAt'}) async {
    final quety = mapToQuery({
      'q': tag,
      'from': from,
      'sortBy': sortBy,
      'apiKey': _apiKey,
    });
    final url = '$_everythingEndpoint$quety';
    final response = await client.get(url);
    final rawMap = convert.jsonDecode(response.body);
    final parsedResponse = ExtNewsResponse.fromJson(rawMap);
    return parsedResponse.articles;
  }
}

String mapToQuery(Map<String, String> map) {
  var first = true;
  StringBuffer bufer = StringBuffer();
  for (var key in map.keys) {
    final value = map[key];
    if (first) {
      first = false;
      bufer.write('?');
    } else {
      bufer.write('&');
    }
    bufer.write('$key=$value');
  }
  return bufer.toString();
}

//http://newsapi.org/v2/everything

//?q=bitcoin&from=2020-11-09&sortBy=publishedAt&apiKey=ff12689801f5481181c901c5e23c7f49

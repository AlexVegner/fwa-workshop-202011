import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:network/services/articles/articles_service.dart';
import 'package:test/test.dart';

import 'articles_fake_response.dart';

void main() {
  group('Article setvice', () {
    test('Get news', () async {
      //setup
      final client = HttpClientMock();
      final articlesService = ArticlesServiceImpl(client: client);
      // given

      // when
      when(client.get(
              'http://newsapi.org/v2/everything?q=bitcoin&from=2020-12-15&sortBy=publishedAt&apiKey=ff12689801f5481181c901c5e23c7f49'))
          .thenAnswer((_) async => http.Response(fakeArticlesResponse, 200));
      final resp = await articlesService.getNews();
      // then
      expect(resp.length, 2);
    });
  });
}

class HttpClientMock extends Mock implements http.Client {}

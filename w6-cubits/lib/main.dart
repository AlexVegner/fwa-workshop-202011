import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network/common/config/setup_injections.dart';
import 'package:network/pages/articles/articles_list_page.dart';

import 'cubits/articles/articles_cubit.dart';

void main() {
  setupInjections();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => getIt<ArticlesCubit>())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ArticlesListPage(),
        // home: BlocProvider(
        //   create: (BuildContext context) => getIt<ArticlesCubit>(),
        //   child: ArticlesListPage(),
        // ),
      ),
    );
  }
}

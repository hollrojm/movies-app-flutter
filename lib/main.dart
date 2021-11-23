import 'package:films_app/src/pages/pages.dart';
import 'package:films_app/src/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvaider(),
          lazy: false,
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Films',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
        'details': (_) => const DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Colors.amber[700]),
      ),
    );
  }
}

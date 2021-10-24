import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/router.dart';

import 'screens/categories/categories_screen.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ar'),
      ],
      locale: const Locale.fromSubtags(languageCode: 'ar'),
      title: 'Travel app',
      home: const CategoriesScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.amber,
        ),
        fontFamily: 'Noto Kufi',
        splashColor: Colors.amber.withOpacity(0.2),
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

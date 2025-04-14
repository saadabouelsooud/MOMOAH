
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter.router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Tab Navigation',
      locale: const Locale('ar'), // Set Arabic locale
      supportedLocales: const [
        // Locale('en'),
        Locale('ar'), // Add more if needed
      ],
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.nunitoSansTextTheme(),
      ),
      routerConfig: _router,
    );
  }
}
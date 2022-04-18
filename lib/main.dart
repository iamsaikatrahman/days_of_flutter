import 'package:days_of_flutter/pages/home_page.dart';
import 'package:days_of_flutter/pages/login_page.dart';
import 'package:days_of_flutter/pages/tours_page.dart';
import 'package:days_of_flutter/utils/routes.dart';
import 'package:days_of_flutter/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Days of Flutter',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        MyRoutes.homeRoutes: (context) => const HomePage(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.tourRoutes: (context) => const ToursPage(),
      },
    );
  }
}

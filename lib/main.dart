import 'package:days_of_flutter/core/store.dart';
import 'package:days_of_flutter/pages/cart_page.dart';
import 'package:days_of_flutter/pages/home_page.dart';
import 'package:days_of_flutter/pages/login_page.dart';
import 'package:days_of_flutter/pages/tours_page.dart';
import 'package:days_of_flutter/utils/routes.dart';
import 'package:days_of_flutter/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(
    store: MyStore(),
    child: const MyApp(),
  ));
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
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoutes: (context) => const HomePage(),
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.cartRoutes: (context) => const CartPage(),
        MyRoutes.tourRoutes: (context) => const ToursPage(),
      },
    );
  }
}

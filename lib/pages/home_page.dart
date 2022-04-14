import 'package:days_of_flutter/widgets/mydrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluttery Day"),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Container(
          child: const Text("Welcome to fluttery day"),
        ),
      ),
    );
  }
}

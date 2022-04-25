import 'package:days_of_flutter/models/catalog.dart';
import 'package:days_of_flutter/widgets/themes.dart';
import "package:flutter/material.dart";
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item? catalog;
  const HomeDetailPage({Key? key, this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog!.id.toString()),
              child: Image.network("${catalog!.image}"),
            ).h32(context).centered(),
          ],
        ),
      ),
    );
  }
}

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
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog!.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluishColor),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Buy".text.lg.bold.make(),
            ).wh(100, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog!.id.toString()),
              child: Image.network("${catalog!.image}"),
            ).h32(context).centered(),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog!.name!.text.xl4
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog!.desc!.text.xl.caption(context).make(),
                    10.heightBox,
                  ],
                ).p64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
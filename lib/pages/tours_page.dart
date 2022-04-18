// import 'package:days_of_flutter/models/tours_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ToursPage extends StatefulWidget {
  const ToursPage({Key? key}) : super(key: key);

  @override
  State<ToursPage> createState() => _ToursPageState();
}

class _ToursPageState extends State<ToursPage> {
  List listofTours = [];
  Future fetchData() async {
    http.Response response;
    response = await http
        .get(Uri.parse('https://safe-citadel-76628.herokuapp.com/tours'));

    if (response.statusCode == 200) {
      setState(() {
        listofTours = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load Tours');
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tours"),
        ),
        body: Column(
          children: [
            Text("All tours"),
            (listofTours == null)
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: listofTours.length,
                    itemBuilder: (context, index) {
                      return (listofTours[index]['imgUrl'] == null)
                          ? Container()
                          : ListTile(
                              // leading: Image.network(
                              //   listofTours[index]['imgUrl'],
                              //   width: 50,
                              //   height: 50,
                              // ),
                              title: Text(
                                listofTours[index]['name'],
                              ),
                            );
                    })
          ],
        ),
      ),
    );
  }
}

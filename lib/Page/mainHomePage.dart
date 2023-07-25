import 'package:flutter/material.dart';
import 'package:semo/Page/ButtonNavbar/favnavbar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class mainHomePage extends StatefulWidget {
  const mainHomePage({super.key});

  @override
  State<mainHomePage> createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage> {
  @override
  void initState() {
    super.initState();
    _api();
  }

  var dataJson;
  int totalData = 0;
  void _api() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    var response = await http.get(Uri.parse('http://localhost:1337/api/cars'),
        headers: headers);

    dataJson = jsonDecode(response.body);
    print(dataJson["data"][0]["attributes"][0]);
    setState(() {
      totalData = dataJson["meta"]["pagination"]["total"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 40.0,
          mainAxisSpacing: 40.0,
        ),
        itemCount: totalData,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        dataJson["data"][index]["attributes"]["nama_mobil"],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 100,
                        child: Text(
                          // ignore: prefer_interpolation_to_compose_strings
                          'Rp ' +
                              dataJson["data"][index]["attributes"]["harga"] +
                              "/Hari",
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

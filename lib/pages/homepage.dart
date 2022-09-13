import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:love_tips/models/data_model.dart';
import 'package:love_tips/widgets/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  List<DataItemsModel> itemData = [];
//
  @override
  void initState() {
    super.initState();
    loadData();
  }

  //json leva
  Future<void> loadData() async {
    var dataString = await rootBundle.loadString("assets/files/LoveTips.json");
    //json decode
    final decodedData = jsonDecode(dataString);
    //
    var items0 = decodedData['items'];
    //map data
    itemData =
        List.from(items0).map((e) => DataItemsModel.fromJson(e)).toList();
    //setState() for set the json data
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/homeimage.webp"),
              const SizedBox(height: 10),
              for (int i = 0; i < itemData.length; i++)
                MyButton(
                  item1: itemData[i],
                )
            ],
          ),
        ),
      ),
    );
  }
}

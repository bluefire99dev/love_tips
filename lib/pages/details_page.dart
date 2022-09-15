import 'package:flutter/material.dart';
import 'package:love_tips/models/data_model.dart';

class DetailPage extends StatelessWidget {
  final DataItemsModel item2;
  const DetailPage({Key? key, required this.item2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item2.name!)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              item2.shotdesc!,
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              item2.desc!,
              textAlign: TextAlign.justify,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:love_tips/models/data_model.dart';
import 'package:love_tips/pages/details_page.dart';

class MyButton extends StatelessWidget {
  //
  final DataItemsModel item1;
  //genret constructor
  const MyButton({
    Key? key,
    required this.item1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //heading
    if (item1.id == 0) {
      return Text(
        item1.name!,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }

    return Padding(
      //4th
      padding: const EdgeInsets.all(8.0),
      child: Material(
        //2nd
        color: Colors.pink.shade300,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),

        child: InkWell(
          //3nd for animation
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(item2: item1),
                ));
          },

          child: Container(
            //1st
            height: 50.0,
            width: 200.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 4, color: Colors.pink.shade500),
            ),
            child: const Text(
              "hello",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

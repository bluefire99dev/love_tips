import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          onTap: () {},

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

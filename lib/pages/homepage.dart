import 'package:flutter/material.dart';
import 'package:love_tips/widgets/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/homeimage.webp"),
              const SizedBox(height: 10),
              MyButton(),
              MyButton(),
              MyButton()
            ],
          ),
        ),
      ),
    );
  }
}

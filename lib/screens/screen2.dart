import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: 'Thank You!\n\n', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              TextSpan(text: 'You have selected '),
              TextSpan(text: 'Flutter BLoC ', style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
              TextSpan(text: 'as the best library.'),
            ]
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var pup = Colors.deepPurpleAccent;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: pup,
        ),
        backgroundColor: pup,

        body: const SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text("New-Page here!!!"),],
          ),
        )
    );
  }
}

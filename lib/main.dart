import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Lottery App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Lottery Winning Number Is 5")),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: x == 5?Colors.red.withOpacity(0.1) :Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 5
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 35,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Congratulations! Your number is $x.\nYou have won the lottery.",
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Better Luck Next Time your number is $x\ntry again",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
        },
        child: Icon(Icons.refresh_outlined),
      ),
    ));
  }
}

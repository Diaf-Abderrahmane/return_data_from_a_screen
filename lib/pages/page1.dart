// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Map time = {"Country": "Germany", "time": "mn3rf"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page 1",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, "/page2");
                  setState(() {
                    time = result;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 20, 58, 100)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(19)),
                ),
                child: Text(
                  "Go to page2",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
            SizedBox(
              height: 22,
            ),
            Text(time["time"], style: TextStyle(fontSize: 28)),
            SizedBox(
              height: 22,
            ),
            Text(time["Country"], style: TextStyle(fontSize: 28)),
          ],
        ),
      ),
    );
  }
}

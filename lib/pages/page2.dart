import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page 2",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, {"Country": "Canada", "time": "22:55 pm"});
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                ),
                child: Text("Fetch info about Canada and go to page 1",
                    style: TextStyle(fontSize: 16, color: Colors.black))),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, {"Country": "Algeria", "time": "22 pm a wldi"});
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                ),
                child: Text("Fetch info about Algeria and go to page 1",
                    style: TextStyle(fontSize: 16, color: Colors.black)))
          ],
        ),
      ),
    );
  }
}

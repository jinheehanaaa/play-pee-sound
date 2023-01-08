import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        //appBar: AppBar(),
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.green,
              Colors.purple,
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Let's Pee",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text("Save yourself from \nawkward situations",
                  style: TextStyle(color: Colors.black)),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                    height: size.height / 2.5,
                    child: const Image(image: AssetImage("assets/ompang.png"))),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Colors.orange,
                  elevation: 5,
                ),
                child: Text("Play"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

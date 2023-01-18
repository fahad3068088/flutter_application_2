// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'widget/FractionallySizedBox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Fhad(),
    );
  }
}

class Fhad extends StatefulWidget {
  const Fhad({super.key});

  @override
  State<Fhad> createState() => _FhadState();
}

class Bb {
  String titl;
  bool hh;
  Bb({required this.hh, required this.titl});
}

List nn = [Bb(titl: "aaaaaaaaa", hh: false), Bb(titl: "vvvvvvv", hh: true)];

class _FhadState extends State<Fhad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled : true,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.all(22),
                  color: Colors.amber,
                  // height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        cursorColor: Colors.red,

                        maxLength: 20,
                        decoration: InputDecoration(
                           hintText:" اكتب المهام",
                           border : OutlineInputBorder(),
                            labelText :"المهمه",
                        ),
                      ),
                      TextButton(
                        style : ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 44, 43, 42)),
                        ),
                        onPressed: () { Navigator.pop(context);}, 
                        child: Text("اضافة",style: TextStyle(fontSize: 22),))
                    ],
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 225, 186, 186),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 82, 92),
        title: Container(
            child: Center(
                child: Text(
          "المهام اليومية",
          style:
              TextStyle(fontSize: 40, color: Color.fromARGB(255, 234, 103, 47)),
        ))),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
        children: [...nn.map((e) => Fahad(vartitle: e.titl, done: e.hh))],
      ),
    );
  }
}

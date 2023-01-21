// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:developer';
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'widget/FractionallySizedBox.dart';
import 'widget/Padding.dart';

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

int ali() {
  int fahad = 0;
// ignore: avoid_function_literals_in_foreach_calls
  nn.forEach((e) {
    if (e.hh) {
      fahad++;
    }
  });
  return fahad;
}

List nn = [
  Bb(titl: vc, hh: false),
];

nweTask() {
  nn.add(
    Bb(titl: vc, hh: false),
  );
}

String vc = "";
final myController = TextEditingController();
myfun() {
  vc = myController.text;
}

class _FhadState extends State<Fhad> {
  delet(int bb) {
    setState(() {
      nn.remove(nn[bb]);
    });
  }
  fahadd(){
    setState(() {
      nn.removeRange(0,nn.length);
    });
  }

  change(int ds) {
    setState(() {
      nn[ds].hh = !nn[ds].hh;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 163, 37, 37),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(22),
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          cursorColor: Color.fromARGB(255, 196, 28, 16),
                          controller: myController,
                          maxLength: 20,
                          decoration: InputDecoration(
                            hintText: " اكتب المهام",
                            border: OutlineInputBorder(),
                            labelText: "المهمه",
                          ),
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 44, 43, 42)),
                            ),
                            onPressed: () {
                              setState(() {
                                myfun();
                                nweTask();
                                Navigator.pop(context);
                              });
                            },
                            child: Text(
                              "اضافة",
                              style: TextStyle(fontSize: 22),
                            ))
                      ],
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Color.fromARGB(255, 22, 21, 21),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {  fahadd();},
          icon: Icon(Icons.delete),
          color: Colors.pink,
          iconSize: 30,
        ),
        backgroundColor: Color.fromARGB(255, 58, 31, 77),
        title: Container(
            child: Center(
                child: Text(
          "المهام اليومية",
          style:
              TextStyle(fontSize: 40, color: Color.fromARGB(255, 234, 103, 47)),
        ))),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Container(
        padding: const EdgeInsets.all(20),
        // height: 600,
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              MyWidget(
                aaa: nn.length,
                bbb: ali(),
              ),
              Container(
                height: 600,
                child: ListView.builder(
                    itemCount: nn.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Fahad(
                          vartitle: nn[index].titl,
                          done: nn[index].hh,
                          myfun: change,
                          iii: index,
                          delet: delet);
                    }),
              )
            ]),
      ),
    );
  }
}

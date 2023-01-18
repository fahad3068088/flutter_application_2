// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Fahad extends StatelessWidget {
  
String vartitle;
bool done;
  Fahad({required this.vartitle,required this.done});
  @override
  Widget build(BuildContext context) {
    return  FractionallySizedBox(
          widthFactor: 1,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.fromLTRB(11, 6, 10, 1),
              margin: EdgeInsets.fromLTRB(22, 22, 22, 22),
              // ignore: sort_child_properties_last
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      vartitle,
                      style: TextStyle(fontSize: 20),
                    ),
                   Icon(
                      done? Icons.check:Icons.close,
                      size: 27,
                      color: done?  Colors.green: Colors.red,
                   )
                    
                  
                  ]),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            ),
          ]),
        );
  }
}
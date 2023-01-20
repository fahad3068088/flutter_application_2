// ignore: file_names
import 'package:flutter/material.dart';
class MyWidget extends StatelessWidget {
  // const MyWidget({super.key});
   final int aaa;
   final int bbb;
   const MyWidget({super.key, required this.aaa,required this.bbb});
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "${aaa}/${bbb}",
                style: TextStyle(fontSize: 44,
                color:(aaa==bbb)?Colors.green:Colors.red),
              ),
            ),
          ) ;
  }
}

 


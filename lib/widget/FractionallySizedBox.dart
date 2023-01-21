// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Fahad extends StatelessWidget {
  final Function delet;
final String vartitle;
final bool done;
final Function myfun;
final int iii;

  Fahad({required this.vartitle,required this.done,required this.delet,required this.myfun,required this.iii});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ( ) { myfun(iii); },
      child: FractionallySizedBox(
            widthFactor: 1,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top:22),
                // ignore: sort_child_properties_last
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        vartitle,
                        style: TextStyle(fontSize: 20),
                      ),
                     Row(
                       children: [
                         Icon(
                            done? Icons.check:Icons.close,
                            size: 30,
                            color: done?  Colors.green: Colors.red,
                         ),
                         SizedBox(width: 15),
                         IconButton(onPressed: (){delet(iii);}, 
                         icon:Icon(Icons.delete), 
                         color: Colors.pink,
                          iconSize: 30,
                       )
                       ],

                     )
                      
                    
                    ]),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              ),
            ]),
          ),
    );
  }
}
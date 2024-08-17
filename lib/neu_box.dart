import 'package:flutter/material.dart';
class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key?key,required this.child}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Padding(
          padding:  EdgeInsets.all(12.0),
          child: Center(child: child),
        ),
        decoration:BoxDecoration(
          color: Colors.grey[300],
          borderRadius:BorderRadius.circular(12),
          boxShadow:[
            //dark sh right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5,5),
            ),
            //light top right
            const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5,-5),
            ),
          ],
        ) ,
    );
  }
}

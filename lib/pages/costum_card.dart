import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CostumCard extends StatelessWidget {

  final Color color;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final dynamic leading1;
  final dynamic leading2;
  final String title;
  final String subtitle;
  final Function()? onTap;

  CostumCard({
    required this.color,
    required this.padding,
    required this.margin,
    required this.leading1,
    required this.leading2,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(2,2),
            color: Colors.grey.shade500,)],
        borderRadius: BorderRadius.circular(12.0),),
      child:
      ListTile(
        leading: CircleAvatar(radius: 25.0, child: leading1, backgroundImage: leading2),
        title: Text(title,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
        subtitle: Text(subtitle),
        trailing: Column(children: [Icon(Icons.arrow_right), Text("See More"), ],),
        onTap: onTap
      ),);
  }
}

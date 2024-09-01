import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphabetName extends StatelessWidget {
  var name;

  AlphabetName(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABCs"),
      ),
      body: Column(
        children: [
          Text("Welcome, $name",style: TextStyle(fontSize: 25,color: Colors.red),),
        ],
      ),
    );
  }
}

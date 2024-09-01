import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Poemscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PoemScreenState();
  
}

class _PoemScreenState extends State<Poemscreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poem"),
      ),
      body: Center(
        child: Text("Welcome to Poem"),
      ),
    );
    
  }
}
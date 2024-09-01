import 'package:abcs_game/Aplhabet/AlphabetScreen.dart';
import 'package:abcs_game/Number/NumberScreen.dart';
import 'package:abcs_game/Poem/PoemScreen.dart';
import 'package:abcs_game/State/StateScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Aplhabet/AlphabetScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ABCs"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bachground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              Center(
                child: Text(
                  "Welcome to ABCs",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Container(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AlphabetScreen()));
                  },
                  child: Text(
                    "Alphabet",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    maximumSize: Size.fromWidth(200),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Numberscreen()));
                  },
                  child: Text(
                    "Number",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    maximumSize: Size.fromWidth(200),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Poemscreen()));
                  },
                  child: Text(
                    "Poem",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    maximumSize: Size.fromWidth(200),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                width: 350,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StateScreen()));
                  },
                  child: Text(
                    "State",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    maximumSize: Size.fromWidth(200),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

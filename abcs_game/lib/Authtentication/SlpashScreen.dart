import 'package:abcs_game/Authtentication/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SlpashScreen extends StatefulWidget {
  @override
  _SlpashScreenSate createState() => _SlpashScreenSate();
}

class _SlpashScreenSate extends State<SlpashScreen>
    with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("lib/assets/logo.jpg"),
            radius: 100,
            // child: Container(
            //     width: 100,
            //     height: 100,
            //     child: Image.asset("lib/assets/logo.jpg")),
          ),
          SizedBox(height: 20),
          Text('ABCs App',
              style: TextStyle(
              fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32))
        ],
      ),
    ));
  }
}

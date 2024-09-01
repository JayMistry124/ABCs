import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Numberscreen extends StatefulWidget {
  const Numberscreen({super.key});

  @override
  State<Numberscreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<Numberscreen> {

  var arrEnglish = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
  var arrGujrati = ["૦", "૧", "૨", "૩", "૪", "૫", "૬", "૭", "૮", "૯"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number"),
        backgroundColor: Colors.green,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 60,
                color: Colors.white,
                child: TabBar(
                  physics: ClampingScrollPhysics(),
                  padding: EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 10),
                  unselectedLabelColor: Colors.green.shade200,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // labelColor: Colors.black,
                  // dividerColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.greenAccent, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("English"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.greenAccent, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Gujrati"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    padding: EdgeInsets.all(10),
                    itemCount: 10,
                    separatorBuilder: (BuildContext context,int index) => const Divider(),
                    itemBuilder: (context,index){
                      return ListTile(
                        onTap: (){},
                        title: Text(arrEnglish[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      );
                    },
                  ),
                  ListView.separated(
                    padding: EdgeInsets.all(10),
                    itemCount: 10,
                    separatorBuilder: (BuildContext context,int index) => const Divider(),
                    itemBuilder: (context,index){
                      return ListTile(
                        onTap: (){},
                        title: Text(arrGujrati[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

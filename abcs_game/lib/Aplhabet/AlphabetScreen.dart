import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphabetScreen extends StatefulWidget {
  const AlphabetScreen({super.key});

  @override
  State<AlphabetScreen> createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {

  var arrEnglish = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "X", "Y"];
  var arrGujrati = ["ક", "ખ", "ગ", "ઘ", "ચ", "છ", "જ", "ઝ", "ટ", "ઠ", "ડ", "ઢ", "ણ", "ત", "થ", "દ", "ધ", "ન", "પ", "ફ", "બ", "ભ", "મ", "ય","ર","લ","ળ","વ","શ","ષ","સ","હ","ળ","ક્ષ","જ્ઞ"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alphabet"),
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
                        itemCount: 20,
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
                        itemCount: 20,
                        separatorBuilder: (BuildContext context,int index) => const Divider(),
                        itemBuilder: (context,index){
                          return ListTile(
                            onTap: (){},
                            title: Text(arrGujrati[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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

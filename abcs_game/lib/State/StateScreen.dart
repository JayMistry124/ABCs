import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateScreen extends StatefulWidget {
  @override
  _StateScreenState createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  List<String> imgState = [
    'andhra_pradesh.jpg',
    'arunachal_pradesh.png',
    'assam.png',
    'bihar.jpg',
    'chhattisgarh.jpg',
    'goa.jpg',
    'gujarat.jpg',
    'haryana.jpeg',
    'himachal_pradesh.png',
    'jharkhand.jpeg',
    'karnataka.JPG',
    'kerala.jpg',
    'madhya_pradesh.jpeg',
    'maharashtra.jpg',
    'manipur.jpg',
    'meghalaya.png',
    'mizoram.jpeg',
    'nagaland.png',
    'odisha.jpg',
    'punjab.jpg',
    'rajasthan.png',
    'sikkim.jpg',
    'tamil_nadu.png',
    'telangana.jpg',
    'tripura.png',
    'uttar_pradesh.png',
    'uttarakhand.jpg',
    'west_bengal.png',
  ];

  var arrState = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State"),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              width: 300,
              child: ListView.builder(
                itemCount: imgState.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: InkWell(
                        onTap: (){},
                        child: Column(
                          children: <Widget>[
                            Image.asset("lib/assets/state_img/" + imgState[index]),
                            SizedBox(height: 10,),
                            Text(arrState[index],style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

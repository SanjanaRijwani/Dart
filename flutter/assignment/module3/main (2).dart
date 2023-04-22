import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  double sliderValue1=50.0;
  double sliderValue2=10.0;
  double sliderValue3=20.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("CheckBox"),),
      body: Column(
        children: [
          Row(
            children: [
              Slider(min:0,max:100,value: sliderValue1,thumbColor: Colors.lightGreen,activeColor: Colors.pink, onChanged: (value) {
                sliderValue1=value;
                print(sliderValue1);
                setState(() {

                });
              },),
              Text("This is Slider 1"),
            ],
          ),
          Row(
            children: [
              Slider(min:0,max:100,value: sliderValue2,divisions: 3,activeColor: Colors.amber, onChanged: (value) {
                sliderValue2=value;
                print(sliderValue2);
                setState(() {

                });
              },),
              Text("This is Slider 2"),
            ],
          ),
          Row(
            children: [
              Slider(min:0,max:100,value: sliderValue3,autofocus: true,activeColor: Colors.lightGreen,inactiveColor: Colors.red, onChanged: (value) {
                sliderValue3=value;
                print(sliderValue3);
                setState(() {

                });
              },),
              Text("This is Slider 3"),

            ],
          ),
          Text("Your Slider Value 1 is $sliderValue1"),
          Text("Your Slider Value 1 is $sliderValue2"),
          Text("Your Slider Value 1 is $sliderValue3"),











        ],
      ),











    );
  }
}


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
  bool chckValue1=true;
  bool chckValue2=true;
  bool chckValue3=true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("CheckBox"),),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(value: chckValue1, onChanged: (value) {
                chckValue1=value!;
                print(chckValue1);
                setState(() {

                });
              },),
              Text("This is CheckBox 1")
            ],
          ),
          Row(
            children: [
              Checkbox(value: chckValue2, onChanged: (value) {
                chckValue2=value!;
                print(chckValue2);
                setState(() {

                });
              },),
              Text("This is CheckBox 2")
            ],
          ),
          Row(
            children: [
              Checkbox(value: chckValue3, onChanged: (value) {
                chckValue3=value!;
                print(chckValue3);
                setState(() {

                });
              },),
              Text("This is CheckBox 3")
            ],
          ),











        ],
      ),











    );
  }
}


import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();

  bool chkValue1 = true;

  bool chkValue2 = true;

  bool chkValue3 = true;

  bool chkValue4 = true;

  int click = 0;
  var sub = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('main'),),
      body:
      Column(
        children: [
          TextField(
            controller: num1,
            decoration: InputDecoration(
              labelText: 'Num 1',
              hintText: 'Enter number 1',
            ),
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
              labelText: 'Num 2',
              hintText: 'Enter number 2',
            ),
          ),

          Row(
            children: [
              Checkbox(value: chkValue1, onChanged: (value) {
                chkValue1 = value!;
                print(chkValue1);
                setState(() {
                  if(value==true){
                    print('$click');
                  }

                });
              },),
    Text('Add'),
            ],
          ),
              Row(
                children: [
                  Checkbox(value: chkValue2, onChanged: (value) {
                    chkValue2 = value!;
                    print(chkValue2);
                    setState(() {
    if(value==true) {
      print('$sub');
    }
                    });

                  },),
    Text('Sub'),
                ],
              ),
          ElevatedButton(onPressed: () {
            setState(() {
              if (chkValue1==true){
                click = int.parse (num1.text) +int.parse(num2.text);
                print('$click');
              }
              else if(chkValue2 == true){
                  sub = int.parse (num1.text) - int.parse(num2.text);
                  print('$sub');
              }
              else{
                print('not selected');
    }
            });

          }, child: Text('Click Here')),
          Text('add-$click'),
        Text('sub-$sub'),
        ],
      ),
    );
  }
}


import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'usermodel.dart';
import 'userService.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _contactController = new TextEditingController();

  var userservice = UserService();
  var usermodel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("CRUD operations in Sqflite"),
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 42, color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(
                          text: "food",
                          style: TextStyle(
                              color: Color(0xff25c89d),
                              fontWeight: FontWeight.w500)),
                      TextSpan(text: "zy")
                    ])),
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/p1.png",
                  width: double.maxFinite,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 38, color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(
                          text: "Find  ",
                          style: TextStyle(
                              color: Color(0xff25c89d),
                              fontWeight: FontWeight.w500)),
                      TextSpan(text: "Restaurants")
                    ])),
                SizedBox(
                  height: 28,
                ),
                Text(
                  "Dine out and get 50% off with foodzy \n at the best restaurants near you.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 320,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return addDetails();
                            },
                          ));
                        },
                        child: Text(
                          "Add Restaurants",
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff25c89d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 320,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return viewdetails();
                            },
                          ));
                        },
                        child: Text(
                          "View Restaurants",
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff25c89d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class addDetails extends StatefulWidget {
  const addDetails({super.key});

  @override
  State<addDetails> createState() => _addDetailsState();
}

class _addDetailsState extends State<addDetails> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _contactController = new TextEditingController();

  var userservice = UserService();
  var usermodel = UserModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 42, color: Colors.black),
                              children: <TextSpan>[
                            TextSpan(
                                text: " Your \n Review \n",
                                style: TextStyle(
                                    color: Color(0xff25c89d),
                                    fontWeight: FontWeight.w500)),
                            TextSpan(text: " Matters")
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "assets/p3.png",
                            width: 190,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: 530,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text("Enter Your Details",
                          style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: TextField(
                          controller: _nameController,
                          decoration:
                              InputDecoration(hintText: "Enter Resturant Name"),
                        ),
                      ),
                      SizedBox(height: 35,),
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: TextField(
                          controller: _contactController,
                          decoration:
                              InputDecoration(hintText: "Enter Your Review"),
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        height: 40,
                      width: 320,
                        child: ElevatedButton(
                          onPressed: () async {
                            usermodel.name = _nameController.text;
                            usermodel.contact = _contactController.text;
                            var save = await userservice.saveuser(usermodel);
                            print(save);
                            setState(() {
                              var msg = "successfully data submitted";
                              // getdatafromtable();
                              Navigator.pop(context);
                            });
                            _nameController.text = "";
                            _contactController.text = "";
                          },
                          child: Text("Add Review", style: TextStyle(fontSize: 22)),
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff25c89d),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                      height: 40,
                      width: 320,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return viewdetails();
                            },
                          ));
                        },
                        child: Text(
                          "View Restaurants",
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff25c89d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class viewdetails extends StatefulWidget {
  const viewdetails({super.key});

  @override
  State<viewdetails> createState() => _viewdetailsState();
}

class _viewdetailsState extends State<viewdetails> {
  @override
  TextEditingController _editnameController = new TextEditingController();
  TextEditingController _editcontactController = new TextEditingController();
  List<UserModel> usersList = [];
  var userservice = UserService();
  var usermodel = UserModel();

  @override
  void initState() {
    getdatafromtable();
    super.initState();
  }

  getdatafromtable() async {
    usersList.clear();
    print("---> inside get method");
    var read = await userservice.readuser();
    read.forEach((row) {
      setState(() {
        var usermodel = UserModel();
        usermodel.id = row["id"];
        usermodel.name = row["name"];
        usermodel.contact = row["contact"];

        usersList.add(usermodel);

        print("----->  this is all data $read");
      });
    });
  }

  deluser(BuildContext context, userid) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Delte user"),
          actions: [
            ElevatedButton(
                onPressed: () async {
                  
                  var result = await userservice.deleteuser(userid);
                  if (result != null) {
                    print("yess");
                    setState(() {
                  usersList.removeWhere((obj) => obj.id == userid);
                });
                  } else {
                    print("no data");
                    getdatafromtable();
                  }
                  Navigator.pop(context);
                },
                child: Text("Yes"),style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff25c89d)
                ),),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: Text("No"),style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff25c89d)
                ),),
          ],
        );
      },
    );
  }

  updateuser(BuildContext context, userid, name, contact) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit User"),
          content: Container(
            height: 150,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  controller: _editnameController,
                  decoration: InputDecoration(
                      hintText: name, border: OutlineInputBorder()),
                ),
                TextField(
                  controller: _editcontactController,
                  decoration: InputDecoration(
                      hintText: contact, border: OutlineInputBorder()),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
                onPressed: () async {
                  var usermodel = UserModel();
                  usermodel.id = userid;
                  usermodel.name = _editnameController.text;
                  usermodel.contact = _editcontactController.text;
                  var update = userservice.udateuser(usermodel);
                  getdatafromtable();
                  Navigator.pop(context);
                },
                child: Text("Update"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff25c89d)
                ),
                ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff25c89d)
                ),)
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("CRUD operations in Sqflite"),
      //   backgroundColor: Colors.deepPurple,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            child: Column(
              children: [
                Image.asset(
                  "assets/p4.png",
                  width: double.maxFinite,
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: usersList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: Color(0xff25c89d),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    usersList[index].name.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    usersList[index].contact.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              updateuser(
                                                  context,
                                                  usersList[index].id,
                                                  usersList[index].name,
                                                  usersList[index].contact);
                                            },
                                            child: Icon(Icons.edit)),
                                        SizedBox(width: 15),
                                        InkWell(
                                            onTap: () {
                                              deluser(
                                                  context, usersList[index].id);
                                                  setState(() {
                                                    getdatafromtable();
                                                  });
                                            },
                                            child: Icon(Icons.delete))
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

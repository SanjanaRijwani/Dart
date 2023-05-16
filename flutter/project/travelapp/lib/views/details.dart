import 'package:flutter/material.dart';
import 'package:travelapp/views/booking.dart';
import 'package:travelapp/views/home.dart';

import '../data/data.dart';
import '../model/country_model.dart';

class details extends StatefulWidget {
  final String imgurl;
  const details({super.key, required this.imgurl});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  List<countryModel> country = [];

  void initState() {
    print(widget.imgurl);
    country = getCountries();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Stack(
                children: [
                  Image.network(
                    "${widget.imgurl}",
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    color: Colors.black12,
                    //padding: EdgeInsets.only(left: 24,right: 24,top:10),

                    child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 200,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 3),
                              child: Text(
                                "Sea FLower Resort",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "Koh chang Tai,thailand",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 11),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RatingBar(3.7.round()),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "2.1",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        height: 630,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20), //only changed this
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: double.maxFinite, // and this
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween, //
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(Icons.wifi),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      150, 158, 158, 158),
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          Text("Free \n Wi-Fi"),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(Icons.beach_access),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      150, 158, 158, 158),
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          Text("Sound \n Beach"),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(Icons.food_bank),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      150, 158, 158, 158),
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          Text("  Bar and \n Resturant"),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Icon(Icons.music_video),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color.fromARGB(
                                                      150, 158, 158, 158),
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          Text("  First \n Coostime"),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffE9F4F9)),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Color(0xffE9F4F9),
                                        ),
                                        height: 100,
                                        width: 170,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                builder: (context) {
                                                  return booking();
                                                },
                                              ));
                                            },
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Icon(Icons.book_online,
                                                        size: 44,
                                                        color:
                                                            Color(0xff1a4479)),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Booking \n 8.0/10",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4E6059),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                          "Based On 30 Reviews",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff4E6059),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 35,
                                    // ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffE9F4F9)),
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xffE9F4F9),
                                      ),
                                      height: 100,
                                      width: 170,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                  builder: (context) {
                                                    return booking();
                                                  },
                                                ));


                                                
                                              },
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Icon(
                                                    Icons.book_online,
                                                    size: 44,
                                                    color: Color(0xff1a4479),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("Banking \n 8.0/10",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4E6059),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 26),
                                              child: Row(
                                                children: [
                                                  Text("Based On 30 Reviews",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff4E6059),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 12))
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                        height: 150,
                                        width: 350,
                                        child: Text(
                                            "Experience unparalleled luxury at the premium therapies at Wyndham Ahmedabad Shela's  on-site spa,  Take a refreshing swim in the outdoor pool, and  allow your children to have fun in the kids' pool. Relish delicious Indian and global dishes at Wyndham Ahmedabad Shela's on-site restaurant, Cube Lounge.",
                                            style: TextStyle(
                                                color: Color(0xff4E6059),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                height: 1.5,
                                                wordSpacing: 6))),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                height: 180,
                                child: ListView.builder(
                                  itemCount: country.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return details(
                                              imgurl: country[index]
                                                  .imgUrl
                                                  .toString(),
                                            );
                                          },
                                        ));
                                      },
                                      child: Container(
                                        child: CountryListTile(
                                          countryName:
                                              country[index].countryName,
                                          label: country[index].label,
                                          noOfTours: country[index].noOfTours,
                                          rating: country[index].rating,
                                          imgURl: country[index].imgUrl,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;
  RatingBar(this.rating);
  //const RatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: rating >= 1 ? Colors.white70 : Colors.white30,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star,
            color: rating >= 2 ? Colors.white70 : Colors.white30,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star,
            color: rating >= 3 ? Colors.white70 : Colors.white30,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star,
            color: rating >= 4 ? Colors.white70 : Colors.white30,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star,
            color: rating >= 5 ? Colors.white70 : Colors.white30,
          ),
          SizedBox(
            width: 3,
          ),
        ],
      ),
    );
  }
}

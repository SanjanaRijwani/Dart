import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/data/data.dart';
import 'package:travelapp/model/popular_tours_model.dart';
import '../model/country_model.dart';
import 'details.dart';

class Home extends StatefulWidget {
  //const Home({super.key});
  // List<countryModel> country = [];
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<countryModel> country = [];
  List<popularTourModel> populart = [];
  void initState() {
    country = getCountries();
    populart = getpop();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(179, 239, 235, 235),
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.all(7)),
            Image.asset(
              "assets/logo.jpg",
              height: 26,
            ),
            Text(
              "DiscountTour",
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w300),
            ),
          ]),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find The Best Tour",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Country",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 220,
                      child: ListView.builder(
                        itemCount: country.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return details(
                                    imgurl: country[index].imgUrl.toString(),
                                  );
                                },
                              ));
                            },
                            child: Container(
                              child: CountryListTile(
                                countryName: country[index].countryName,
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
                      height: 10,
                    ),
                    Text(
                      "Popular Tours",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.black54,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 400,
                      child: Flexible(
                        child: ListView.builder(
                          itemCount: populart.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return details(
                                      imgurl: populart[index].imgurl.toString(),
                                    );
                                  },
                                ));
                              },
                              child: Container(
                                child: PopularTours(
                                    desc: populart[index].desc,
                                    imgUrl: populart[index].imgurl,
                                    price: populart[index].price,
                                    rating: populart[index].rating,
                                    title: populart[index].tittle),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // populartour()
                  ])),
        ));
  }
}

class PopularTours extends StatefulWidget {
  final String? imgUrl;
  final String? title;
  final String? desc;
  final String? price;
  final double? rating;
  PopularTours(
      {@required this.imgUrl,
      @required this.rating,
      @required this.desc,
      @required this.price,
      @required this.title});

  @override
  State<PopularTours> createState() => _PopularToursState();
}

class _PopularToursState extends State<PopularTours> {
  List<countryModel> country = [];
  List<popularTourModel> populart = [];
  List d = ["sanju", "zeel"];
  void initState() {
    country = getCountries();
    populart = getpop();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: CachedNetworkImage(
              imageUrl: widget.imgUrl!,
              width: 73,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title!,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4E6059)),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  widget.desc!,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff89A097)),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  widget.price!,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4E6059)),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 10, right: 8),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xff139157)),
              child: Column(
                children: [
                  Text(
                    "${widget.rating}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class CountryListTile extends StatelessWidget {
  //const CountryListTIle({super.key});
  final String? label;
  final String? countryName;
  final int? noOfTours;
  final double? rating;
  final String? imgURl;
  //CountryListTIle({super.label});
  CountryListTile(
      {required this.countryName,
      required this.label,
      required this.noOfTours,
      required this.rating,
      required this.imgURl});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network("$imgURl",
                  height: 200, width: 150, fit: BoxFit.cover),
            ),
            Container(
                height: 200,
                width: 150,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 8, top: 8),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              "$label",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "$countryName",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Text("$noOfTours",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                            margin:
                                EdgeInsets.only(bottom: 8, left: 8, right: 8),
                            padding: EdgeInsets.symmetric(
                                horizontal: 3, vertical: 7),
                            decoration: BoxDecoration(
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Text("$rating",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                                SizedBox(
                                  height: 2,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ))
                      ],
                    ),
                  ],
                ))
          ],
        ));
  }
}

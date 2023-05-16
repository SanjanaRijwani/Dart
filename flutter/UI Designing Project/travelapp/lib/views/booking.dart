import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class booking extends StatelessWidget {
  const booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 1060,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 70),
                child: Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(38),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/booking.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, top: 34),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("VISA",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                )),
                            Padding(padding: EdgeInsets.only(left: 240)),
                            Icon(Icons.menu_open,
                                color: Colors.white, size: 26, weight: 40),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            Icon(Icons.star_rounded,
                                color: Colors.white, size: 14, weight: 40),
                            SizedBox(
                              width: 8,
                            ),
                            Text("9860",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Universal Travel",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3),
                            Text("04/11",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Card Holder",
                              style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.43),
                            Text("Expiry",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                // width: 300,
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    color: Color(0xffE9F4F9),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Thailand",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff4E6059)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "10 days for two/all inclusive",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff89A097)),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "50",
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xff139157)),
                        child: Column(
                          children: [
                            Text(
                              "4.5",
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Text("Flight Details",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.mobile_friendly,size: 48,color:Color(0xff4E6059)),
                          SizedBox(width:MediaQuery.of(context).size.width * 0.050),
                          Text("Airlines",style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4E6059)),
                                  
                                  ),
                                  SizedBox(width:MediaQuery.of(context).size.width * 0.06 ,),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:8),
                                        child: Text("Moscow",style: TextStyle(
                                                                        fontSize: 18,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Color(0xff4E6059))),
                                      ),
                                  SizedBox(height: 10,),
                                      Text("01:30 PM",style: TextStyle(
                                                                        fontSize: 18,
                                                                        fontWeight: FontWeight.w300,
                                                                        color: Color(0xff4E6059))),

                                    ],
                                  ),
                                  SizedBox(width:MediaQuery.of(context).size.width * 0.05,),
                                  Transform.rotate(
                                    angle: 180 * math.pi / 350,
                                    child: Icon(Icons.flight,color:Color(0xff139157) ,)),
                                    SizedBox(width:MediaQuery.of(context).size.width * 0.05 ,),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:8),
                                        child: Text("Thailand",style: TextStyle(
                                                                        fontSize: 18,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Color(0xff4E6059))),
                                      ),
                                  SizedBox(height: 10,),
                                      Text("05:30 PM",style: TextStyle(
                                                                        fontSize: 18,
                                                                        fontWeight: FontWeight.w300,
                                                                        color: Color(0xff4E6059))),

                                    ],
                                  ),

                        ],
                      ),
                      SizedBox(height: 25,),
                         DottedLine(),
                      SizedBox(height: 12,),
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: [
                            Text("Date",style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff4E6059))),
                                                                              SizedBox(width:MediaQuery.of(context).size.width * 0.05 ,),
                                                                              Text("15.10.2019",style: TextStyle(
                                                                         fontSize: 18,
                                                                         fontWeight: FontWeight.w600,
                                                                         color: Color(0xff4E6059))),
                               SizedBox(width:MediaQuery.of(context).size.width * 0.2 ,),
                              Text("Seat No.",style: TextStyle(
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.w500,
                                                                              color: Color(0xff4E6059)))  ,
                                                                              SizedBox(width:MediaQuery.of(context).size.width * 0.0 ,),
                                                                              Text("L120",style: TextStyle(
                                                                         fontSize: 18,
                                                                         fontWeight: FontWeight.w600,
                                                                         color: Color(0xff4E6059)))                                         
                          ],
                        ),
                      ),
                       

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffE9F4F9),
                    borderRadius: BorderRadius.circular(30)),
                height: 170,
                width: MediaQuery.of(context).size.width * 0.95,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.050),
            Padding(
              padding: const EdgeInsets.only(left: 19,bottom: 15),
              child: Text("Tour  Cost",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width:MediaQuery.of(context).size.width * 0.050),
                            Text("Airlines",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4E6059)),
                                    
                                    ),
                                    SizedBox(width:MediaQuery.of(context).size.width * 0.06 ,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:0.8),
                                      child: Text("\$200.50",style: TextStyle(
                                                                      fontSize: 18,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Color(0xff4E6059))),
                                    ),
                                    
                                   
                                      SizedBox(width:MediaQuery.of(context).size.width * 0.2 ,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:0.8),
                                      child: Text("Total",style: TextStyle(
                                                                      fontSize: 18,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Color(0xff4E6059))),
                                    ),
                                    
            
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                             SizedBox(width:MediaQuery.of(context).size.width * 0.050),
                            Text("Services",style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4E6059)),
                                    
                                    ),
                                    SizedBox(width:MediaQuery.of(context).size.width * 0.06 ,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:0.8),
                                      child: Text("\$45.50",style: TextStyle(
                                                                      fontSize: 18,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Color(0xff4E6059))),
                                    ),
                                    
                                   
                                      SizedBox(width:MediaQuery.of(context).size.width * 0.2 ,),
                                    Padding(
                                      padding: const EdgeInsets.only(top:0.8),
                                      child: Text("\$ 245.50",style: TextStyle(
                                                                      fontSize: 24,
                                                                      fontWeight: FontWeight.w900,
                                                                      color: Color(0xff139157))),
                                    )
                          ],
                        )
                           
                        
            
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    
                     border: Border.all(width: 2,color: Color.fromARGB(61, 198, 195, 195)),
                      borderRadius: BorderRadius.circular(30)),
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
            ),
            SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                height:65,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff139157),shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),),
                  onPressed: (){}, child: Text("Book Tour ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),)
                  
                  ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

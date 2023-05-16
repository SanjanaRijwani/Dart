import 'package:travelapp/model/country_model.dart';

import '../model/popular_tours_model.dart';

List<countryModel> getCountries() {
  List<countryModel> country = [];
  countryModel obj = new countryModel();
  //1
  obj.countryName = "Paris";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/2111253/pexels-photo-2111253.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //2
  obj.countryName = "Thailand";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.2;
  obj.imgUrl =
      "https://images.pexels.com/photos/3225520/pexels-photo-3225520.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //3
  obj.countryName = "Singapur";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.1;
  obj.imgUrl =
      "https://images.pexels.com/photos/11048064/pexels-photo-11048064.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //4
  obj.countryName = "Norway";
  obj.label = "New";
  obj.noOfTours = 5;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/994605/pexels-photo-994605.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //5
  obj.countryName = "Dubai";
  obj.label = "New";
  obj.noOfTours = 6;
  obj.rating = 4.3;
  obj.imgUrl =
      "https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //6
  obj.countryName = "Europe";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //7
  obj.countryName = "Canada";
  obj.label = "New";
  obj.noOfTours = 3;
  obj.rating = 4.1;
  obj.imgUrl =
      "https://images.pexels.com/photos/2516418/pexels-photo-2516418.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //8
  obj.countryName = "Australia";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //9
  obj.countryName = "Manali";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/2179666/pexels-photo-2179666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  //10
  obj.countryName = "Goa";
  obj.label = "New";
  obj.noOfTours = 10;
  obj.rating = 4.5;
  obj.imgUrl =
      "https://images.pexels.com/photos/2964163/pexels-photo-2964163.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  country.add(obj);
  obj = new countryModel();
  return country;
}

List<popularTourModel> getpop() {
  List<popularTourModel> populart = [];
  popularTourModel obj = new popularTourModel();
  //1
  obj.tittle = "Russia";
  obj.desc = "14 nigths for two/all inclusive";
  obj.rating = 4.2;
  obj.price = "\$ 400.00";
  obj.imgurl = "https://images.pexels.com/photos/982263/pexels-photo-982263.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
  //2
  obj.tittle = "America";
  obj.desc = "10 nigths for two/all inclusive";
  obj.rating = 4.2;
  obj.price = "\$ 345.00";
  obj.imgurl = "https://images.pexels.com/photos/3225528/pexels-photo-3225528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
  //3
  obj.tittle = "India";
  obj.desc = "10 nigths for two/all inclusive";
  obj.rating = 4.0;
  obj.price = "\$ 500.00";
  obj.imgurl = "https://images.pexels.com/photos/13971395/pexels-photo-13971395.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
  //4
  obj.tittle = "South Korea";
  obj.desc = "13 nigths for two/all inclusive";
  obj.rating = 3.2;
  obj.price = "\$ 505.00";
  obj.imgurl = "https://images.pexels.com/photos/6051693/pexels-photo-6051693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
  //5
  obj.tittle = "London";
  obj.desc = "16 nigths for two/all inclusive";
  obj.rating = 4.1;
  obj.price = "\$ 600.00";
  obj.imgurl = "https://images.pexels.com/photos/572780/pexels-photo-572780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
obj.tittle = "Thailand";
  obj.desc = "3 nigths for two/all inclusive";
  obj.rating = 5.0;
  obj.price = "\$ 345.00";
  obj.imgurl = "https://images.pexels.com/photos/6051693/pexels-photo-6051693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
obj.tittle = "Newzeland";
  obj.desc = "5 nigths for two/all inclusive";
  obj.rating = 4.2;
  obj.price = "\$ 700.00";
  obj.imgurl = "https://images.pexels.com/photos/4215113/pexels-photo-4215113.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();
 obj.tittle = "Africa";
  obj.desc = "10 nigths for two/all inclusive";
  obj.rating = 2.2;
  obj.price = "\$ 100.00";
  obj.imgurl = "https://images.pexels.com/photos/3265456/pexels-photo-3265456.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  populart.add(obj);
  obj = new popularTourModel();

  return populart;
}

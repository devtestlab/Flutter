import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location = ''; // Name of the location in UI
  String time = ''; // The time of the location
  String flag = ''; // Flag icon for the url
  String url = 'Asia/Kolkata';  // location url end point
  bool isDatetime = true;  //Verifies if time is day or night

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {

    try{
      // // We will simulate a network request for username
      // String username = await Future.delayed(Duration(seconds: 3), () {
      //   return 'Gourav Kashyap';
      // });
      //
      // // We will simulate a network request for username
      // String bio = await Future.delayed(Duration(seconds: 2), () {
      //   return 'I am Full Stack Developer';
      // });
      //
      // print('$username - $bio');
      // var uri = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
      // Response response = await get(uri);
      // Map data = jsonDecode(response.body);
      // print(data);
      // print(data['title']);

      // Request genration
      var uri = Uri.parse('http://www.worldtimeapi.org/api/timezone/$url');
      Response response = await get(uri);
      Map data = jsonDecode(response.body);
      //print(data);

      String datatime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //print(datatime);
      print(offset);

      DateTime now = DateTime.parse(datatime);
      now = now.add(Duration(hours: int.parse(offset)));
      //time = now.toString();
      //isDatetime = <Condition> ? true : false
      isDatetime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    }

    catch(e){
      print('Caught Error: $e');
      time = 'Could not get Time Data';
    }
  }

}
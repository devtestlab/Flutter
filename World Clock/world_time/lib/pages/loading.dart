import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

getWorldTime() async {
  WorldTime instance = WorldTime(location: 'Kolkata', flag: 'india.png', url: 'Asia/Kolkata');
      await instance.getTime();
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location' : instance.location,
        'flag' : instance.flag,
        'time' : instance.time,
        'isDateTime' : instance.isDatetime,
      });
}


  @override
  void initState() {
    super.initState();
    getWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      body: Center(
        child: SpinKitFadingCube(
        color: Colors.white,
        size: 50.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String bgImage = data['isDateTime'] ? 'day.png' : 'night.png';

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/$bgImage'),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,100.0,0.0,0.0),
          child: SafeArea(
            child: Column(
              children: <Widget> [
                ElevatedButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          data['time'] = result['time'],
                          data['location'] = result['location'],
                          data['isDayTime'] = result['isDayTime'],
                          data['flag'] = result['flag'],
                        }as Map;
                      });
                    },
                    icon: Icon(
                        Icons.edit_location,
                      color: Colors.grey[500],
                    ),
                    label: Text(
                        'Choose Location',
                    style: TextStyle(
                      color: Colors.grey[500]
                  ),
            ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 30.0,
                        letterSpacing: 2.0,
                          color:Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                      fontSize: 60.0,
                      letterSpacing: 2.0,
                    color:Colors.white,
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

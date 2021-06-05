import 'package:flutter/material.dart';

class ChangeLocation extends StatefulWidget {

  @override
  _ChangeLocationState createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {


  @override
  Widget build(BuildContext context) {
    print('Init method ran from Build!');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          // setState(() {
          //   counter += 1;
          // });
        },
        child: Text('Counter is'),
      ),
    );
  }
}

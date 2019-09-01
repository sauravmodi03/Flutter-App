import 'package:flutter/material.dart';
import 'package:flutter_app/pages/social.dart';

class personalInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Personal info")),
      body: Text("Personal hello"),
    );
  }

}
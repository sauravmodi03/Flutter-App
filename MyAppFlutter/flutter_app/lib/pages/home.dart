// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/social.dart';
import 'package:flutter_app/pages/personal.dart';
import 'package:image_picker/image_picker.dart';

class HomeWidget extends StatelessWidget {

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//    setState(() {
      _image = image;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("Home")),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
//      body: appBody(),
//      drawer: drawer(context),
//      bottomNavigationBar: bottomNavigation(),
    );
  }



  Widget drawer(context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeWidget()),
              );
//              Navigator.pop(context);
            },),
          ListTile(
            title: Text('Social Connections'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => socialConnections()),
              );
            },
          ),
          ListTile(
            title: Text('Personal Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => personalInfo()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget appBody(){
    return Align(
      alignment: Alignment.center,
      child: Text("Hello World....!!!!!"),
    );
  }

  Widget bottomNavigation(){
    return BottomAppBar(
        child : Container(
          height: 50.0,
          color: Colors.orangeAccent,
          child: Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: (){
                print("Icon is pressed");
              },),
            ],
          ),
        )
    );
  }
}

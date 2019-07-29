import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplebook/categories.dart';
import './samplebookappbar.dart';
import './samplebookappcard.dart';
import './sampleBookapptext.dart';

void main() {
  runApp(SampleBookApp());
}

class SampleBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  } //build
}

class MyHome extends StatelessWidget {
  final List<String> _listImages = [
    'images/BirthDay.jpg',
    'images/DIY.jpg',
    'images/Food.jpg',
    'images/Picnic.jpg',
    'images/Travel.jpg',
    'images/Wedding.jpg'
  ];
  final List<String> _listText = [
    'BirthDay',
    'DIY',
    'Food',
    'Picnic',
    'Travel',
    'Wedding'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SampleBookAppBar(), //appbar
      backgroundColor: const Color(0xfff5f5f5), //light ash white
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: _listImages //To generate list of images at run time
              .map(
                (img) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Categories()),
                            );
                            print('clicked on' + img);
                          }, //on tap
                          child: SampleBookAppCard(img),
                        ),
                      ),
                      SampleBookAppText(_listText[_listImages.indexOf(img)]),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

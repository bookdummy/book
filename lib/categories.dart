import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:samplebook/sampleBookapptext.dart';
import 'package:samplebook/samplebookappbar.dart';

class Categories extends StatelessWidget {
  final List<String> _listBirthDay = [
    'BD_Post1_djgJDGASHDGJASGDHJSAGDHASGJGSDHSDJHASJHafjkhkjdhjkdshfkjsd',
    'BD_Post2',
    'BD_Post3',
    'BD_Post4',
    'BD_Post5',
    'BD_Post6',
    'BD_Post7',
    'BD_Post8',
    'BD_Post9',
    'BD_Post10',
  ];
  final List<String> _listBirthDayImages = [
    'images/BD_Post (1).jpg',
    'images/BD_Post (2).jpg',
    'images/BD_Post (3).jpg',
    'images/BD_Post (4).png',
    'images/BD_Post (5).png',
    'images/BD_Post (6).jpg',
    'images/BD_Post (7).jpg',
    'images/BD_Post (8).jpg',
    'images/BD_Post (9).png',
    'images/BD_Post (10).jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: SampleBookAppBar(),
        body: Center(
          child: ListView.separated(
            itemCount: _listBirthDay.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        '${_listBirthDayImages[index]}',
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: 
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[ 
                           SampleBookAppText('Sample'),                    
                           Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                                 Icon(Icons.star_border),
                                  Icon(Icons.star_border),
                                   Icon(Icons.star_border),
                                    Icon(Icons.star_border),
                                     Icon(Icons.star_border),
                          ],),
                          
                         Text(
                          'Birthday post ${_listBirthDay[index]}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(fontSize: 15.0),
                        ),
                       ],)
                      ),
                    ),
                  ],
                )),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(height: 10.0,indent: 10.0, endIndent: 10.0,color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SampleBookAppText extends StatelessWidget {
  final String _imageText;

  SampleBookAppText(this._imageText);
  
  @override
  Widget build(BuildContext context) {

    return Text(
      _imageText,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.grey[700],fontFamily: 'BreeSerif'),

    );
  }

  
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleBookAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true,
      title: Text('Book',style: TextStyle(fontFamily: 'Open Sans Bold',fontSize: 30.0,fontWeight: FontWeight.bold),),
      backgroundColor: const Color(0xffFF5252),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}

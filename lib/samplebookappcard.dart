import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SampleBookAppCard extends StatelessWidget {
  final String _imageName;

  SampleBookAppCard(this._imageName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        borderOnForeground: true,
        color: const Color(0xffFFFFFF),
        elevation: 20.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        //shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              _imageName,
              fit: BoxFit.cover,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.colorBurn,
            ),
          ),
        ),
      ),
    );
  }
}

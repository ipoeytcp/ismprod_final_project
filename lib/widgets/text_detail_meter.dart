import 'package:flutter/material.dart';

class TextDetailMeter extends StatelessWidget {
  final String title;
  final String detail;
  // ignore: use_super_parameters
  const TextDetailMeter({
    Key? key,
    required this.title,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 17, top:10, bottom: 5),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(
              fontSize: 17, 
              fontWeight: FontWeight.bold),),
          Text(detail)  
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MenuUtama extends StatelessWidget {
  final String imagePath;
  final String title;
  const MenuUtama({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 50,
          height: 60,
          child: Column(
            children: [
              Image.asset(imagePath, width: 30,),
              const SizedBox(height: 5,),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[600],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                            color: const Color.fromARGB(255, 214, 215, 216),
                            style: BorderStyle.solid,
                            width: 2,),
                image: const DecorationImage(
                    image: AssetImage("assets/images/ipoey.png"))),
          ),
          const Text(
            "Syaiful Hadi S.Kom",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
          ),
          const Text(
            "Kabag Jaringan & PKA",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          const Text(
            "Cabang Sei Agul",
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}

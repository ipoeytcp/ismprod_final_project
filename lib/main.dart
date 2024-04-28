
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ismprod_final_project/splash_screen/splash_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Stand Meter Produksi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const  Color(0xFF1650C0)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

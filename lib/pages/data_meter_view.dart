import 'package:flutter/material.dart';

class DataMeterView extends StatefulWidget {
  final String? title;
  const DataMeterView({
    super.key,
    this.title
  });

  @override
  State<DataMeterView> createState() => _DataMeterViewState();
}

class _DataMeterViewState extends State<DataMeterView> {

  String myTitle = "";

  @override
  void initState() {
    myTitle = widget.title ?? myTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widget appbar
        backgroundColor: const Color(0xFF1650C0),
        automaticallyImplyLeading: true,
        title: Text(
          myTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
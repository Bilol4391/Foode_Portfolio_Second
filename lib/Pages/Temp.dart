import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Temp",)),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){

          }, child: Text("Camera")),
          ElevatedButton(onPressed: (){

          }, child: Text("Photo")),
        ],
      ),
    );
  }
}

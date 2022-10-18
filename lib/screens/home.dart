import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title:Text("Fitness Time"),
      ),
      body:SingleChildScrollView (
        child:Center(
            child: Column(
              children: [
                Row (
                    children: widget(
                        child: const Text('Hola Diana'))
                ),
              ],
            ),
          )
        ,

    ));
  }
}

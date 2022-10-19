import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        automaticallyImplyLeading: true,
        // leading: Container(),
       ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage:
              NetworkImage('https://randomuser.me/api/portraits/women/44.jpg'),radius: 100
            ),
            Text("Antonia Font",
            style: Theme.of(context).textTheme.headline4,),
          Text("Since 20 April 2022",
          style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
      ),

    );
  }}

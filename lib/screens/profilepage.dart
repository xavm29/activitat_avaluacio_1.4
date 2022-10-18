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
      body:Column(
          Center(
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/44.jpg")),
          ),
      ),

    );
  }
}

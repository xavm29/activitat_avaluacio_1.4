import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double _currentSliderValue = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        automaticallyImplyLeading: true,
        // leading: Container(),
      ),
      body: Center(
        child: Column(
          children: [
            const Hero(
              tag: "Antonia Font",
              child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/44.jpg'),
                  radius: 100),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Antonia Font",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Since 20 April 2022",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 110,
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.access_time),
                          Text(
                            "Time",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            "2h 45'",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 110,
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.place),
                          Text(
                            "Km",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            "221,4'",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 110,
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.directions_run),
                          Text(
                            "Activities",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            "42",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Height",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 150,
                    onChanged: (value) {},
                  ),
                  Text(
                    "150cm",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Weight",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 150,
                    onChanged: (value) {},
                  ),
                  Text(
                    "50 Kg",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/inherited_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final InheritedProfile data =
        context.dependOnInheritedWidgetOfExactType<InheritedProfile>()!;
    int kmtotal = 0;
    int Tempstotal = 0;

    for (var activity in data.activities) {
      kmtotal += activity.kilometers;
      Tempstotal += activity.time;
    }
    ;
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
              child: TextField(
                controller: myController,
                onChanged: (text) {
                  data.profile.name = text;
                },
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
                            "$Tempstotal",
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
                            "KM",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            "$kmtotal",
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
                            "${data.activities.length}",
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Height",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Slider(
                    value: data.profile.userheight.toDouble(),
                    min: 0,
                    max: 180,
                    label:data.profile.userheight.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        data.profile.userheight = value.toInt();
                      });
                    },
                  ),
                  Text(
                    "180cm",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Weight",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Slider(
                    value: data.profile.userweight.toDouble(),
                    label: data.profile.userweight.round().toString(),
                    min: 0,
                    max: 150,
                    onChanged: (value) {
                      setState(() {
                        data.profile.userweight = value.toInt();
                      });

                    },
                  ),
                  Text(
                    "100 Kg",
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

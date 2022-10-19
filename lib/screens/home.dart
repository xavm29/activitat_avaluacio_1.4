import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:untitled/screens/profilepage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Time"),
        actions: <Widget>[
          CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/44.jpg")),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
          icon: Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hola diana",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Come 5 veces al día y permanece hidratada durante el dia",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Mas detalles",
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Utimas actividades",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.directions_run),
                  title: Text(
                    "Running",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    "Ayer 19:20",
                  ),
                  trailing: Text(" 7200Km",
                      style: Theme.of(context).textTheme.headline5),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.directions_run),
                  title: Text(
                    "Running",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    "Ayer 19:20",
                  ),
                  trailing: Text(" 7200Km",
                      style: Theme.of(context).textTheme.headline5),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.directions_run),
                  title: Text(
                    "Running",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    "Ayer 19:20",
                  ),
                  trailing: Text(" 7200Km",
                      style: Theme.of(context).textTheme.headline5),
                ),
              ),
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.7,
                      center: Text(
                        "70.0%",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: Text(
                        "Objetivo mensual",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

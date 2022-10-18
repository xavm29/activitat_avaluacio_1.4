import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
                  "https://randomuser.me/api/portraits/women/44.jpg"))
        ],
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hola diana",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "Come 5 veces al día y permanece hidratada durante el dia",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Mas detalles",
                style:Theme.of(context).textTheme.bodySmall,

              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Utimas actividades",
                style: Theme.of(context).textTheme.headline4,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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

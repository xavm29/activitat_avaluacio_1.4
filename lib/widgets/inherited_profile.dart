import 'package:flutter/material.dart.';

import '../models/activity.dart';
import '../models/profile.dart';

class InheritedProfile extends InheritedWidget {
  InheritedProfile({super.key, required super.child});

  final Profile profile = Profile(1, "Luis", 140, 39);
  final List<Activity> activities = [
    Activity(1, "hola", 10, 10),
    Activity(2, "correr", 10, 10),
    Activity(3, "andar", 10, 10),
  ];

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

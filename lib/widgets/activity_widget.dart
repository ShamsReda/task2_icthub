

import 'package:flutter/material.dart';

class Activity {

  final String name;
  final String description;
  final IconData icon;

  Activity({
    required this.name,
    required this.description,
    required this.icon
  });

}


List<Activity> activityList = [
  Activity(name: 'Idea', description: '3 activities available', icon: Icons.lightbulb),
  Activity(name: 'Food', description: '13 activities available', icon: Icons.fastfood),
  Activity(name: 'Work', description: '4 activities available', icon: Icons.work),
  Activity(name: 'Sport', description: '2 activities available', icon: Icons.sports_basketball),
  Activity(name: 'Music', description: '9 activities available', icon: Icons.music_video),
];
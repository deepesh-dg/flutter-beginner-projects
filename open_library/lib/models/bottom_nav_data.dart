import 'package:flutter/material.dart';
import 'package:open_library/models/my_routes.dart';

class BottomNavData {
  final IconData icon;
  final String label;
  final MyRoutes routeHandler;

  BottomNavData({
    required this.icon,
    required this.label,
    required this.routeHandler,
  });
}

import 'package:flutter/material.dart';
import 'package:latihan/routes.dart';
void main() {
runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
));
}


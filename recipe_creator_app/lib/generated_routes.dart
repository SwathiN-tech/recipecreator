import 'package:flutter/material.dart';
import 'package:recipe_creator_app/home_page.dart';
class RouteGenerator {
Route<dynamic> generateRoute(RouteSettings settings) {
final args = settings.arguments;
switch (settings.name) {
case '/':
return MaterialPageRoute(
builder: (_) const HomePage()); 
default:
return _errorRoute();
}
}
static Route<dynamic>_errorRoute() {
return MaterialPageRoute (builder: (_){
return Scaffold(
appBar: AppBar(
title: const Text('Error'),
), body: const Center(
child: Text('ERROR'), ), ); }); }}
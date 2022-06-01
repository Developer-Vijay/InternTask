import 'package:flutter/material.dart';

class filter {
  String image;

  String name;

  filter({required this.image, required this.name});
}

List<filter> listFilter = [
  filter(
      image: "assets/images/education.png",
      name: "Bachelor of Technology"),
  filter(
      image: "assets/images/sketch.png",
      name: "Bachelor Architecture"),
  filter(image: "assets/images/pharmacy.png", name: "Pharmacy"),
  filter(image: "assets/images/balance.png", name: "Law"),
  filter(image: "assets/images/management.png", name: "Management"),
];

class Hostel {
  String image;

  Hostel({required this.image});
}

List<Hostel> hostelList = [
  Hostel(image: "assets/images/r1.png"),
  Hostel(image: "assets/images/r2.png"),
  Hostel(image: "assets/images/r3.jpg"),
  Hostel(image: "assets/images/r4.jpg"),
];

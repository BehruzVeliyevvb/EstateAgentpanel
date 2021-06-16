import 'package:flutter/material.dart';

class Home {
  final int id;
  final String title;
  final String date;
  final String image;
  final String price;
  final String location;

  Home({
    @required this.id,
    @required this.title,
    @required this.date,
    @required this.image,
    @required this.price,
    @required this.location,
  });
}

List<Home> demoHomelist = [
  Home(
      id: 1,
      title: 'Satilir',
      date: ' 2021',
      image: 'assets/images/Ev1.jpg',
      price: '780000',
      location: 'Nerimanov'),
  Home(
      id: 2,
      title: 'Satilir',
      date: ' 2021',
      image: 'assets/images/Ev2.jpg',
      price: '380000',
      location: 'Merdekan'),
  Home(
      id: 3,
      title: 'Kiralanir',
      date: ' 2021',
      image: 'assets/images/Ev3.jpg',
      price: '30000',
      location: 'Nerimanov'),
  Home(
      id: 4,
      title: 'Kiralanir',
      date: ' 2021',
      image: 'assets/images/Ev4.jpg',
      price: '350000',
      location: 'Genclik'),
  Home(
      id: 5,
      title: 'Satilir',
      date: ' 2021',
      image: 'assets/images/Ev5.jpg',
      price: '500000',
      location: 'Buzovna'),
];

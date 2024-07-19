import 'package:flutter/material.dart';
import 'package:json/8.1%20What%20is%20JSON%20&%20JSON%20Parsing/modal/User_model.dart';

class UserModel {
  late int id;
  late String name, username, email, phone, website;
  late Address address;
  late Company company;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.address,
      required this.company});

  factory UserModel.fromJson(Map m1) {
    return UserModel(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        phone: m1['phone'],
        website: m1['website'],
        address: Address.fromJson(m1['address']),
        company: Company.fromJson(m1['company']));
  }
}

class Address {
  late String street, suite, city, zipcode;
  late Geo geo;

  Address(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      required this.geo});

  factory Address.fromJson(Map m1) {
    return Address(
      street: m1['street'],
      suite: m1['suite'],
      city: m1['city'],
      zipcode: m1['zipcode'],
      geo: Geo.fromJson(m1['geo']),
    );
  }
}

class Geo {
  late String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase, bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map m1) {
    return Company(
      name: m1['name'],
      catchPhrase: m1['catchPhrase'],
      bs: m1['bs'],
    );
  }
}

List fi = [
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
];

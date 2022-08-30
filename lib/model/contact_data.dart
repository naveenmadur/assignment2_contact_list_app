import 'dart:collection';
import '';
import 'package:contact_list_app/model/contact_class.dart';
import 'package:flutter/material.dart';

class ContactData extends ChangeNotifier{
  final List<Contact> _contactList = [
    Contact(name: '2464 Royal Ln. Mesa, New Jersey 45463', address: '2118 Thornridge Cir. Syracuse, Connecticut 35634'),
    Contact(name: 'Yashashree', address: 'Pune'),
    Contact(name: 'Ajinkya', address: 'Pune'),
    Contact(name: 'Akanksha', address: 'Pune'),
    Contact(name: 'Taher', address: 'Pune'),
    Contact(name: 'Sanath', address: 'Pune'),
    Contact(name: 'Atharva', address: 'Pune'),
    Contact(name: 'Sristi', address: 'Pune'),
    Contact(name: 'Naveen', address: 'Pune'),
  ];

  void shuffleContacts(){
    _contactList.shuffle();
    notifyListeners();
  }

List<Contact> get contacts{
  return _contactList;
}


}
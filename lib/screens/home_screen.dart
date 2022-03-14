import 'package:flutter/material.dart';
import 'package:sample_app_data_persistence/widgets/widgets.dart';

import '../shared_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  String _gender = '';

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    _isFemale();
    
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('DarkMode: ${Preferences.isDarkMode}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Username: ${Preferences.name}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Email: ${Preferences.email}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Gender: $_gender', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ],
      ),
    );
  }

  void _isFemale() {
    if (Preferences.gender == 1) {
      _gender = 'Male';
    }else{
      _gender = 'Female';
    }
  }
}

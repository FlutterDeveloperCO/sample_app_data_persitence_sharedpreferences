import 'package:flutter/material.dart';
import 'package:sample_app_data_persistence/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Text('DarkMode:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Username: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Email: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Divider(),
          Text('Gender: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ],
      ),
    );
  }
}

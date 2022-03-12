import 'package:flutter/material.dart';
import 'package:sample_app_data_persistence/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Select Your Preferences',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(),
              SwitchListTile.adaptive(
                  title: Text(
                    'Dark Mode',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  value: true,
                  onChanged: (value) {}),
              Divider(),
              Text(
                'Select Your Gender',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Divider(),
              RadioListTile<int>(
                  title: Text('Male'),
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {}),
              Divider(),
              RadioListTile<int>(
                  title: Text('Female'),
                  value: 2,
                  groupValue: 1,
                  onChanged: (value) {}),
              Divider(),
              Text(
                'Enter Your Details',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: '',
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        helperText: 'Enter your name',
                      ),
                    ),
                    TextFormField(
                      initialValue: '',
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        helperText: 'Enter your email',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

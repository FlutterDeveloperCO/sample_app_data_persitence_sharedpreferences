import 'package:flutter/material.dart';
import 'package:sample_app_data_persistence/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String? name, email;
  bool isDarkmode = false;
  int gender = 1;

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
              const Text(
                'Select Your Preferences',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  value: isDarkmode,
                  onChanged: (value) {
                    isDarkmode = value;
                    setState(() {});
                  }),
              const Divider(),
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
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 1;
                    setState(() {});
                  }),
              Divider(),
              RadioListTile<int>(
                  title: Text('Female'),
                  value: 2,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value ?? 2;
                    setState(() {});
                  }),
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      initialValue: '',
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        helperText: 'Enter your email',
                      ),
                      onChanged: (value) {
                        email = value;
                        setState(() {});
                      },
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

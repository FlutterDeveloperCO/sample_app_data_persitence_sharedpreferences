import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app_data_persistence/providers/theme_provider.dart';
import 'package:sample_app_data_persistence/widgets/widgets.dart';

import '../shared_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

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
                  value: Preferences.isDarkMode,
                  onChanged: (value) {
                    Preferences.isDarkMode = value;
                    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
                    value ? themeProvider.setDarkTheme() : themeProvider.setLigthTheme();
                    setState(() {});
                  }),
              const Divider(),
              const Text(
                'Select Your Gender',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Divider(),
              RadioListTile<int>(
                  title: const Text('Male'),
                  value: 1,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  }),
              const Divider(),
              RadioListTile<int>(
                  title: Text('Female'),
                  value: 2,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 2;
                    setState(() {});
                  }),
              const Divider(),
              const Text(
                'Enter Your Details',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: Preferences.name,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        helperText: 'Enter your name',
                      ),
                      onChanged: (value) {
                        Preferences.name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      initialValue: Preferences.email,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        helperText: 'Enter your email',
                      ),
                      onChanged: (value) {
                        Preferences.email = value;
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

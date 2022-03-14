import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app_data_persistence/providers/theme_provider.dart';
import 'package:sample_app_data_persistence/screens/screens.dart';
import 'package:sample_app_data_persistence/shared_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkMode: Preferences.isDarkMode),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Persistence',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}

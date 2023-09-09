import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import './weather_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // print(FlutterConfig.get('API_KEY'));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
      // home: Placeholder(),
    );
  }
}

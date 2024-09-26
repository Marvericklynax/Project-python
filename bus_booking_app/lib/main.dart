import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/booking_provider.dart';
import 'screens/home_screen.dart';
import 'services/api_service.dart';

void main() {
  // Initialize the ApiService with the correct URL.
  final apiService = ApiService('http://localhost:5000'); // Ensure the server is running.

  runApp(
    ChangeNotifierProvider(
      create: (_) => BookingProvider(apiService),
      child: const MyApp(), // Use const constructor for optimization
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);  // Constructor with Key parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Use const constructor for optimization
    );
  }
}

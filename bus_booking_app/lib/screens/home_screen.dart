import 'package:flutter/material.dart';
import '../widgets/booking_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Booking Home'),
      ),
      body: BookingList(),
    );
  }
}

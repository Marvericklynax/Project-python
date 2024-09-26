// import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:bus_booking_app/main.dart';
import 'package:bus_booking_app/services/api_service.dart'; // Correct import
import 'package:bus_booking_app/providers/booking_provider.dart';

void main() {
  testWidgets('displays bookings list', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => BookingProvider(ApiService('http://localhost:5000')),
        child: MyApp(),
      ),
    );

    expect(find.text('Bus Booking Home'), findsOneWidget);
  });
}

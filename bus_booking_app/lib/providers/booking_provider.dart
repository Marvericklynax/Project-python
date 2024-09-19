import 'package:flutter/material.dart';
import '../models/booking.dart';
import '../services/api_service.dart';

class BookingProvider with ChangeNotifier {
  final ApiService apiService;
  List<Booking> _bookings = [];

  BookingProvider(this.apiService);

  List<Booking> get bookings => _bookings;

  Future<void> fetchBookings() async {
    _bookings = await apiService.fetchBookings();
    notifyListeners();
  }

  Future<void> addBooking(Booking booking) async {
    await apiService.createBooking(booking);
    await fetchBookings();
  }
}

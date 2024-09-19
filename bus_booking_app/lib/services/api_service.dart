import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/booking.dart';

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<List<Booking>> fetchBookings() async {
    final response = await http.get(Uri.parse('$baseUrl/bookings'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Booking.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load bookings');
    }
  }

  Future<void> createBooking(Booking booking) async {
    final response = await http.post(
      Uri.parse('$baseUrl/bookings'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': booking.name,
        'date': booking.date,
        'seat': booking.seat,
      }),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create booking');
    }
  }
}

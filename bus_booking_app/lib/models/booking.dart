class Booking {
  final String name;
  final String date;
  final String seat;

  Booking({required this.name, required this.date, required this.seat});

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      name: json['name'],
      date: json['date'],
      seat: json['seat'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'date': date,
      'seat': seat,
    };
  }
}

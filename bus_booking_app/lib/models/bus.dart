class Bus {
  final String name;
  final int availableSeats;

  Bus({required this.name, required this.availableSeats});

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      name: json['name'],
      availableSeats: json['availableSeats'],
    );
  }
}

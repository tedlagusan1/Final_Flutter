class Author {
  final int id;
  final String name;
  final String email;

  Author({required this.id, required this.name, required this.email});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

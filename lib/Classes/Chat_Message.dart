class ChatMessage {
  final String Massage;
  final int Voice;

  ChatMessage({required this.Massage, required this.Voice});
}

// Example work------
// class User {
//   final int userId;
//   final String name;
//   final String address;

//   // Constructor with required parameters
//   User({required this.userId, required this.name, required this.address});

//   // Optional: A method to create a User object from JSON data (factory constructor)
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       userId: json['userId'],
//       name: json['name'],
//       address: json['address'],
//     );
//   }

//   // Optional: Override toString to print object details
//   @override
//   String toString() => '$name, $userId, $address';
// }

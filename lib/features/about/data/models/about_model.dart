class AboutModel {
  final String collectionId;
  final String collectionName;
  final String id;
  final String firstName;
  final String lastName;
  final DateTime created;
  final DateTime updated;

  const AboutModel({
    required this.collectionId,
    required this.collectionName,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.created,
    required this.updated,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) {
    return AboutModel(
      collectionId: json['collectionId'],
      collectionName: json['collectionName'],
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      created: DateTime.parse(json['created']),
      updated: DateTime.parse(json['updated']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collectionId': collectionId,
      'collectionName': collectionName,
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'created': created.toIso8601String(),
      'updated': updated.toIso8601String(),
    };
  }
}

class BlogModel {
  final String collectionId;
  final String collectionName;
  final String id;
  final String title;
  final String description;
  final String routeName;
  final String image;
  final DateTime created;
  final DateTime updated;

  BlogModel({
    required this.collectionId,
    required this.collectionName,
    required this.id,
    required this.title,
    required this.description,
    required this.routeName,
    required this.image,
    required this.created,
    required this.updated,
  });

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
      collectionId: json['collectionId'],
      collectionName: json['collectionName'],
      id: json['id'],
      title: json['title'],
      description: json['description'],
      routeName: json['route_name'],
      image: json['image'],
      created: DateTime.parse(json['created']),
      updated: DateTime.parse(json['updated']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collectionId': collectionId,
      'collectionName': collectionName,
      'id': id,
      'title': title,
      'description': description,
      'route_name': routeName,
      'image': image,
      'created': created.toIso8601String(),
      'updated': updated.toIso8601String(),
    };
  }
}

class WorksModel {
  final String collectionId;
  final String collectionName;
  final String id;
  final String title;
  final String description;
  final String details;
  final String image;
  final String slug;
  final DateTime created;
  final DateTime updated;

  WorksModel({
    required this.collectionId,
    required this.collectionName,
    required this.id,
    required this.title,
    required this.description,
    required this.details,
    required this.image,
    required this.slug,
    required this.created,
    required this.updated,
  });

  factory WorksModel.fromJson(Map<String, dynamic> json) {
    return WorksModel(
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      details: json['details'] as String,
      image: json['image'] as String,
      slug: json['slug'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collectionId': collectionId,
      'collectionName': collectionName,
      'id': id,
      'title': title,
      'description': description,
      'details': details,
      'image': image,
      'slug': slug,
      'created': created.toIso8601String(),
      'updated': updated.toIso8601String(),
    };
  }
}
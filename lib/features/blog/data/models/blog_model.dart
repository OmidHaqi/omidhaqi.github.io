class BlogModel {
  final String collectionId;
  final String collectionName;
  final String id;
  final String title;
  final String description;
  final String details;
  final String author;
  final String slug;
  final String image;
  final DateTime created;
  final DateTime updated;

  BlogModel({
    required this.collectionId,
    required this.collectionName,
    required this.id,
    required this.title,
    required this.description,
    required this.details,
    required this.author,
    required this.slug,
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
      details: json['details'],
      author: json['author'],
      slug: json['slug'],
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
      'details': details,
      'author': author,
      'slug': slug,
      'image': image,
      'created': created.toIso8601String(),
      'updated': updated.toIso8601String(),
    };
  }
}

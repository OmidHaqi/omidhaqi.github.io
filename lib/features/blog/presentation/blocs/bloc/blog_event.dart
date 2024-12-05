import 'package:equatable/equatable.dart';

abstract class BlogEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchBlogPosts extends BlogEvent {}

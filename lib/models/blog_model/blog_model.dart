import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';

part 'blog_model.g.dart';

@freezed
class BlogModel with _$BlogModel {
  const BlogModel._();

  const factory BlogModel({
    String? title,
    String? shortDescription,
    String? image,
    DateTime? createdDate,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}
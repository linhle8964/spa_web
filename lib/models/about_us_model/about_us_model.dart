import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_model.freezed.dart';

part 'about_us_model.g.dart';

@freezed
class AboutUsModel with _$AboutUsModel {
  const AboutUsModel._();

  const factory AboutUsModel({
    String? title,
    String? text,
    String? image,
  }) = _AboutUsModel;

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);
}




import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const ServiceModel._();

  const factory ServiceModel({
    String? name,
    String? image,
    String? description,
    DateTime? startTime,
    DateTime? endTime,
    num? price,
    int? duration,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
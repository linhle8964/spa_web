import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:students/models/base_status/base_status.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  factory BookingState({
    @Default(BaseStatus.initial()) BaseStatus baseStatus,
    @Default('') username,
    @Default('') phoneNumber,
    DateTime? date,
  }) = _BookingState;
}

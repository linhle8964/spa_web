import 'package:intl/intl.dart';

class DateTimeUtil {
  DateTimeUtil._();
  static int daysInMonth(DateTime date) {
    var firstDayThisMonth = DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  static String formatFullDate(DateTime dateTime) {
    return DateFormat('d MMMM y hh:mm a').format(dateTime);
  }

  static String formatYYYYMMDD(DateTime dateTime) {
    return DateFormat('yyyy-mm-dd hh:mm a').format(dateTime);
  }

  static String formatYMD(DateTime dateTime) {
    return DateFormat('y MMMM d').format(dateTime);
  }

  static String formatDMY(DateTime dateTime) {
    return DateFormat('d MMMM y').format(dateTime);
  }

  static String formatHHMM(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }
}

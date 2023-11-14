import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CommonNavigator {
  static Future<void> go(BuildContext context,
      {required String routeName, dynamic argument}) async {
    context.go('/$routeName', extra: argument);
  }
}

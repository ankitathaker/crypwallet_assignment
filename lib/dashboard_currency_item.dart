import 'package:flutter/material.dart';

class DashboardCurrencyItem {
  Widget currencyIcon;
  String currencyName;
  String shortName;
  String quantity;
  String rate;
  double percentage;

  Color get percentageColor {
    if (percentage > 0) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  String get percentageStr {
    if (percentage > 0) {
      return "+${percentage.toStringAsPrecision(2)}";
    } else {
      return "${percentage.toStringAsPrecision(2)}";
    }
  }

  DashboardCurrencyItem({
    required this.currencyIcon,
    required this.currencyName,
    required this.shortName,
    required this.quantity,
    required this.rate,
    required this.percentage,
  });
}

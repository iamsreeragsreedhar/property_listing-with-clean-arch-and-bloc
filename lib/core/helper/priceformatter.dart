import 'package:intl/intl.dart';

Priceformatter(price) {
  return NumberFormat.currency(
    locale: 'en_US',
    symbol: '\$ ',
    decimalDigits: 0,
  ).format(price);
}

import 'package:intl/intl.dart';

extension NumExtension on num {
  String toPrice() =>
      NumberFormat.currency(locale: 'RU', symbol: '₽').format(this);
}

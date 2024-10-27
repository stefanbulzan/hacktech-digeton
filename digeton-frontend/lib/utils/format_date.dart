import 'package:intl/intl.dart';

String formatOfferDate(DateTime? date) {
  return date != null ? DateFormat('EEEE, dd MMMM yyyy').format(date) : '';
}

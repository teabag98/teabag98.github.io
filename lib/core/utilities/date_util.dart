class DateUtil {
  static String getDayName(int value, {bool inFull = false}) {
    String day;

    switch (value) {
      case DateTime.sunday:
        day = inFull ? "Sunday" : "Sun";
        break;
      case DateTime.monday:
        day = inFull ? "Monday" : "Mon";
        break;
      case DateTime.tuesday:
        day = inFull ? "Tuesday" : "Tue";
        break;
      case DateTime.wednesday:
        day = inFull ? "Wednesday" : "Wed";
        break;
      case DateTime.thursday:
        day = inFull ? "Thursday" : "Thu";
        break;
      case DateTime.friday:
        day = inFull ? "Friday" : "Fri";
        break;
      case DateTime.saturday:
        day = inFull ? "Saturday" : "Sat";
        break;
      default:
        day = "";
    }

    return day;
  }

  static String getMonthName(int value, {bool inFull = false}) {
    String month;

    switch (value) {
      case DateTime.january:
        month = inFull ? "January" : "Jan";
        break;
      case DateTime.february:
        month = inFull ? "February" : "Feb";
        break;
      case DateTime.march:
        month = inFull ? "March" : "Mar";
        break;
      case DateTime.april:
        month = inFull ? "April" : "Apr";
        break;
      case DateTime.may:
        month = inFull ? "May" : "May";
        break;
      case DateTime.june:
        month = inFull ? "June" : "Jun";
        break;
      case DateTime.july:
        month = inFull ? "July" : "Jul";
        break;
      case DateTime.august:
        month = inFull ? "August" : "Aug";
        break;
      case DateTime.september:
        month = inFull ? "September" : "Sep";
        break;
      case DateTime.october:
        month = inFull ? "October" : "Oct";
        break;
      case DateTime.november:
        month = inFull ? "November" : "Nov";
        break;
      case DateTime.december:
        month = inFull ? "December" : "Dec";
        break;
      default:
        month = "";
    }

    return month;
  }

  static DateTime changeToTimezone(dynamic date) {
    if (date.runtimeType.toString() == 'DateTime') {
      final data = date as DateTime;

      return data.isUtc ? data.toLocal() : data.toUtc().toLocal();
    }

    // print('\n\n\n $date \n\n\n');
    final data = DateTime.parse(date.toString());
    // print('\n\n\n ${data.runtimeType} \n\n\n');
    return data.isUtc ? data.toLocal() : data.toUtc().toLocal();
  }

  static String dateTimetoString(dynamic date) {
    if (date.runtimeType.toString() == 'DateTime') {
      final data = (date as DateTime).toUtc().toLocal();

      return '${getMonthName(data.month, inFull: true)} ${data.day}'
          ' - ${data.hour % 12}:${data.minute} ${data.hour >= 12 ? 'PM' : 'AM'}';
    }
    final data = (DateTime.parse(date.toString())).toUtc().toLocal();

    return '${getMonthName(data.month, inFull: true)} ${data.day}'
        ' - ${data.hour % 12}:${data.minute} ${data.hour >= 12 ? 'PM' : 'AM'}';
  }

  static String dateimetoHour(dynamic data) {
    final dtime = changeToTimezone(data);

    return '${dtime.hour}:${dtime.minute < 10 ? '0' + dtime.minute.toString() : dtime.minute} ${dtime.hour < 12 ? 'AM' : 'PM'}';
  }
}

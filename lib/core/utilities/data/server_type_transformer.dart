class ServerTypeTransformer {
  static double? toDoubleFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! double) return double.parse(anyType.toString());
    // ignore: unnecessary_cast
    return anyType as double;
  }

  static String? toStringFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! String) return anyType.toString();
    return anyType.toString();
  }

  static int? toIntFromServer(dynamic anyType) {
    if (anyType == null) return null;
    if (anyType is! int) return int.parse(anyType.toString());
    return anyType;
  }
}

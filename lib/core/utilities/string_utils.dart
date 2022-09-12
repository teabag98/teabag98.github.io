extension EmailValidator on String {
  bool isValidEmail() => RegExp(
          r'^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()\.,;\s@\"]+\.{0,1})+([^<>()\.,;:\s@\"]{2,}|[\d\.]+))$')
      .hasMatch(this);
}

extension StringExtension on String {
  String capitalize() => "${this[0].toUpperCase()}${substring(1)}";
  String get capitalizeFirstofEach => replaceAll(RegExp(' +'), ' ')
      .toLowerCase()
      .split(" ")
      .map((str) => str.capitalize())
      .join(" ");
}

class ValidatorUtil {
  static bool isValidPhoneNumber(String? phoneNumber) {
    return RegExp(r'^[0-9]{10}$').hasMatch(phoneNumber ?? "");
  }
}
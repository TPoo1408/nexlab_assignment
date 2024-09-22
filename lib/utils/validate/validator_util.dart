class ValidatorUtil {
  
  // Valid Phone Number: 10 digit number
  static bool isValidPhoneNumber(String? phoneNumber) {
    return RegExp(r'^[0-9]{10}$').hasMatch(phoneNumber ?? "");
  }
}

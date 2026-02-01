class Validator {
  /// Email Validator
  static String? emailValidator(var value) {
    if (value == null || value.isEmpty) {
      return "This Field cannot be empty";
    } else if (!value.contains("@gmail.com")) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  static String? passValidator(var value) {
    if (value == null || value.isEmpty) {
      return "This Field cannot be empty";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    } else {
      return null;
    }
  }
}

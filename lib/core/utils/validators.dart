class Validators {
  static String? validateEmail(String? value) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    if (!RegExp(pattern).hasMatch(value ?? "")) {
      return "Enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    String pattern = r'^(?=.*[A-Z])(?=.*[0-9])[A-Za-z0-9]{6,}$';

    if (!RegExp(pattern).hasMatch(value ?? "")) {
      return "Password must contain 6 chars, 1 uppercase, 1 number";
    }
    return null;
  }
}

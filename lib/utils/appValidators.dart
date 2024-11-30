class AppValidation {
  String? validateUser(value) {
    if (value!.isEmpty) {
      return 'Please enter a username';
    }
  }

  String? validateEmail(value) {
    if (value.isEmpty) {
      return 'Please enter an Email';
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter Valid email';
    }
    return null;
  }

  String? validatePhoneNumber(value) {
    if (value!.isEmpty) {
      return 'Please enter a Phone Number ';
    }
    if (value.length != 11) {
      return 'Please enter a 10-digit phone Number';
    }
    return null;
  }

  String? validatepassword(value) {
    if (value!.isEmpty) {
      return 'Please enter a Password';
    }
  }
}

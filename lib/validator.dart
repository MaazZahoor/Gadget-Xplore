String email =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
String password =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

String validateemail(String value) {
  final regex = RegExp(email);
  if (regex.hasMatch(value)) {
    return null;
  } else if (value.isEmpty) {
    return "E-mail is empty";
  } else {
    return "improper format";
  }
}

String validatepassword(String value) {
  final regex = RegExp(password);
  if (regex.hasMatch(value)) {
    return null;
  } else if (value.isEmpty) {
    return "Password is empty";
  } else {
    return "improper format";
  }
}

String validatename(String value) {
  if (value.length >= 6) {
    return null;
  } else if (value.isEmpty) {
    return "Username is empty";
  } else {
    return "Name must be of atleast 6 characters";
  }
}

String validatephonenumber(String value) {
  if (value.length == 11) {
    return null;
  } else if (value.isEmpty) {
    return "Phone number is empty";
  } else {
    return "phone number must be of atleast 11 numbers";
  }
}

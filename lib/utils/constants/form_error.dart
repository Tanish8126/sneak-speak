//RegExp
final RegExp vEmailValidator = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
final RegExp vPhoneValidator = RegExp(r'(^[0-9]{10}$)');
final RegExp vOtpValidator = RegExp(r'(^[0-9]{6}$)');
final RegExp vNameValidator = RegExp('[a-zA-Z]');

// Form Error
const String fEmailNullError = "Please Enter your email";
const String fInvalidEmailError = "Please Enter Valid Email";
const String fPassNullError = "Please Enter your password";
const String fShortPassError = "Password is too short";
const String fMatchPassError = "Passwords don't match";
const String fNamelNullError = "Please Enter your name";
const String fPhoneNumber = "Please Enter 10 Digit Mobile Number";
const String fAddressNullError = "Please Enter your address";

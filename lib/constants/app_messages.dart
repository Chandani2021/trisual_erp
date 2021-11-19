// Error Messages
import 'app_constants.dart';

class AppErrorMessage {
  static String strSomethingWentWrong = "Something went wrong";

//Create Account
  static String strErrEnterFullName = "Please enter full name";
  static String strErrEnterMobile = "Please enter mobile number";
  static String strErrEnterValidMobile = "Please enter valid mobile number";

  //Reset Password
  static String strErrEnterNewPwd = "Please enter new name";
  static String strErrEnterConfirmedPwd = "Please enter confirmed name";

//Otp Verification
  static String strErrEnterPin = "Please enter otp";

//Create Password
  static String strErrEnterEmail = "Please enter email address";
  static String strErrEnterEmailNotValid = "Please enter valid email address";
  static String strErrEnterPassword = "Please enter password";
  static String strErrEnterMinPassword =
      "Minimum ${AppConstant.minPasswordLength} length required";

  static String strErrEnterConfirmPwdMissMatch =
      "Both Password are not matched";
}

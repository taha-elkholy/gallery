class AppStrings {
  static const String appName = 'Gallery';
  static const String noRouteFound = 'No Route Found';
  static const String myGallery = 'My\nGallery';
  static const String login = 'LOG IN';
  static const String userName = 'User Name';
  static const String password = 'password';
  static const String submit = 'Submit';
  static const String emailValidation = 'In Valid Email';
  static const String passwordValidation = 'Password Required';
  static const String ok = 'Ok';

  static String welcomeText(String name) => 'Welcome\n$name';
  static const String logout = 'Logout';
  static const String upload = 'Upload';

  /// shared preferences
  static const String currentUserKey = 'CURRENT_USER_KEY';

  /// headers
  static const String accept = 'Accept';
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String authorization = 'Authorization';
  static const String bearer = 'Bearer';

  /// error messages
  static const String networkErrorMessage = 'No Internet Connection';
  static const String unAuthErrorMessage = 'Your Session End, Login Again';
  static const String unknownErrorMessage =
      'Something went wrong\nplease try again later';
  static const String inCorrectInputsErrorMessage =
      'Email or Password not correct';
  static const String notFoundErrorMessage = 'The Required Data Not Found';
}

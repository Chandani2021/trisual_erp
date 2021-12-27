class Endpoints {
  // base url
  // static const String baseUrl = "http://trishul.latestdevelopers.com/api";
  static const String baseUrl = "http://trishuldata.latestdevelopers.com/api";

  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  //Login
  static const String login = baseUrl + "/Auth/Login";

  //Grade
  static const String getGrade = baseUrl + "/Grades";
  static const String deleteGrade = baseUrl + "/Grades";

  //Brand
  static const String getBrand = baseUrl + "/brands";
  static const String deleteBrand = baseUrl + "/brands";
  static const String addBrand = baseUrl + "/brands";
  static const String updateBrand = baseUrl + "/brands";

  //Parameter
  static const String getParameter = baseUrl + "/Parameters";
  static const String deleteParameter = baseUrl + "/Parameters";

  //Parameter Type
  static const String getParameterType =
      baseUrl + "/parameters/GetParameterType";

  //Report Master
  static const String getReportMaster = baseUrl + "/Parameters";

  //Designation
  static const String getDesignation = baseUrl + "/designations";
  static const String deleteDesignation = baseUrl + "/designations";
  static const String updateDesignation = baseUrl + "/designations";
}

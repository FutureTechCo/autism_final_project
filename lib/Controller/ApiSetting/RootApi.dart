class RootApi {
  static const _baseUrl =
      'https://us-central1-autism-project-api.cloudfunctions.net/Afaq/api/v1';
  static const Advice = '$_baseUrl/Advice';
  static const signup = '$_baseUrl/auth/signup';
  static const login = '$_baseUrl/auth/login';
  static const posts = '$_baseUrl/post';
  static const postsSpecific = '$_baseUrl/post/id';
  static const Comment = '$_baseUrl/Comment';
  static const CreateTest = '$_baseUrl/Test';
  static const CreateQuestion = '$_baseUrl/Question';

  //user
  static const User = '$_baseUrl/users';

  ///LaravelApiUrls
  static const String _BaseUrl = "https://talaadmin.online/api";
  static const String Levels = "$_BaseUrl/levels?cus_id=";
  static const String watch = "$_BaseUrl/customer/watch_video";
  static const String report = "$_BaseUrl/customer/report?cus_id=";
}

class Endpoints{
  Endpoints._();

  static const String baseUrl = 'https://api.github.com';
  static const String userProfile = '/users';
  static const String userRepos = 'repos';
  static const int connectionTimeOut = 5000;
  static const int receiveTimeOut = 10000;
}
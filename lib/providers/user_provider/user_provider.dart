import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:git_repo/data/models/user_models/user_profile_model.dart';
import 'package:git_repo/data/services/exceptions.dart';
import 'package:git_repo/data/services/github_services/github_api.dart';

import '../../app/utils/custom_dialoge.dart';
import '../../data/models/user_models/user_repos_model.dart';

class UserProvider with ChangeNotifier{
  final GithubApi _githubApi = GithubApi();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  setLoading(bool status){
    _isLoading = status;
    notifyListeners();
  }

  // Get UserInfo

  UserProfileModel? _userProfileModel ;
  UserProfileModel? get userProfileModel=> _userProfileModel ;
  Future<bool> getUserProfileData(BuildContext context, {required String userName})async{
    try{
      setLoading(true);
      UserProfileModel data = await _githubApi.getUserProfile(username: userName);
      _userProfileModel = data;
      setLoading(false);
      getUserReposData(context, userName: userName);
      return true;
    }on DioError catch(e){
      final message  = DioExceptions.fromDioError(e).message;
      showCustomDialouge(message: message, context: context, title: 'Error');
      setLoading(false);
      rethrow;
    }
 }

 // Get USer Repos
  List<UserReposModel>? _userRepos ;
  List<UserReposModel>? get userRepos=> _userRepos ;
  Future<bool> getUserReposData(BuildContext context, {required String userName})async{
    try{
      setLoading(true);
      List<UserReposModel> data = await _githubApi.getUserRepos(username: userName);
      _userRepos = data;
      setLoading(false);
      return true;
    }on DioError catch(e){
      final message  = DioExceptions.fromDioError(e).message;
      showCustomDialouge(message: message, context: context, title: 'Error');
      setLoading(false);
      rethrow;
    }
  }
}
import 'package:flutter/material.dart';
import 'package:git_repo/data/models/user_models/user_profile_model.dart';
import 'package:git_repo/data/services/github_services/github_api.dart';

import '../../app/routes/route_manager.dart';

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
  Future<bool> getUserProfileData({required String userName})async{
    try{
      setLoading(true);
      UserProfileModel data = await _githubApi.getUserProfile(username: userName);
      _userProfileModel = data;
      setLoading(false);
      return true;
    }catch(e){
      setLoading(false);
      rethrow;
    }
 }
}
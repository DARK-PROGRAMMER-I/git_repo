import 'package:dio/dio.dart';
import 'package:git_repo/data/models/user_models/user_repos_model.dart';
import 'package:git_repo/data/services/dio_client.dart';
import 'package:git_repo/data/services/end_points.dart';

import '../../models/user_models/user_profile_model.dart';

class GithubApi{
  DioClient _client = DioClient();

  Future<UserProfileModel> getUserProfile({required String username})async{
    try{
      Response response = await _client.get('${Endpoints.userProfile}/$username');
      return UserProfileModel.fromJson(response.data);
    }catch(e){
      rethrow;
    }
  }

  Future<List<UserReposModel>> getUserRepos({required String username})async{
    try{
      final response = await _client.get('${Endpoints.userProfile}/$username/${Endpoints.userRepos}');
      return response.map((item)=> UserReposModel.fromJson(item.data)).toList();
    }catch(e){
      rethrow;
    }
  }
}
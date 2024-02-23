import 'package:productivee/features/data/models/authenticated_user.dart';

import '../../../../../../core/exceptions/cache.dart';



abstract class AuthenticatedUserLocalDataSource{
  factory AuthenticatedUserLocalDataSource(){
    return _AuthenticatedUserLocalDataSourceImpl();
  }

  Future<List<AuthenticatedUserModel>> getDatas();
}


class _AuthenticatedUserLocalDataSourceImpl implements AuthenticatedUserLocalDataSource{
  get infoList => null;



  @override
  Future<List<AuthenticatedUserModel>> getDatas() async {
    try{await Future.delayed(const Duration(seconds : 3));
    return  infoList.map((data)=> AuthenticatedUserModel.fromJson(data),).toList();

    }catch(error){
      throw CacheException(errorMessage: "$error");
    }
  }
}
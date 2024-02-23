
import '../../../../core/exceptions/cache.dart';
import '../../../../core/exceptions/server.dart';
import '../../domain/entities/authenticated_user.dart';
import '../../domain/repository/datas.dart';
import '../data_source/local_data_source.dart';

class AuthenticatedUserRepositoryImpl implements AuthenticatedUserRepository{
  final AuthenticatedUserLocalDataSource _datasLocalDataSource;
  AuthenticatedUserRepositoryImpl(
      {
        required AuthenticatedUserLocalDataSource dataSource
      }
      ) : _datasLocalDataSource = dataSource;
  @override
  Future<List<AuthenticatedUserEntity>> getDatas() async {
    try{
      final infoList = await _datasLocalDataSource.getDatas();
      return infoList;
    }on CacheException catch(error){
      return [];
    }on ServerException catch(error){
      return [];
    }
  }

}
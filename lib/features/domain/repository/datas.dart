
import '../entities/authenticated_user.dart';

abstract interface class AuthenticatedUserRepository{
  Future<List<AuthenticatedUserEntity>> getDatas();
}
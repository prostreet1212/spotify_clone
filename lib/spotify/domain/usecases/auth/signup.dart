import 'package:dartz/dartz.dart';
import 'package:spotify_clone/spotify/data/models/auth/create_user_req.dart';
import 'package:spotify_clone/spotify/domain/repository/auth/auth.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq>{
  @override
  Future<Either> call({CreateUserReq? params}) async{
    return  await  sl<AuthRepository>().signup(params!);
  }

}
import 'package:dartz/dartz.dart';
import 'package:spotify_clone/core/usecase/usecase.dart';

import '../../../../service_locator.dart';
import '../../../data/models/auth/signin_user_req.dart';
import '../../repository/auth.dart';

class SigninUseCase extends UseCase<Either,SigninUserReq>{
  @override
  Future<Either> call( params) async{
    return sl<AuthRepository>().signin(params);//
  }

}
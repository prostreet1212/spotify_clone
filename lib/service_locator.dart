
import 'package:get_it/get_it.dart';
import 'package:spotify_clone/spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_clone/spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/spotify/domain/repository/auth.dart';
import 'package:spotify_clone/spotify/domain/usecases/auth/signin.dart';
import 'package:spotify_clone/spotify/domain/usecases/auth/signup.dart';

final sl=GetIt.instance;

Future<void> initializeDependencies()async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
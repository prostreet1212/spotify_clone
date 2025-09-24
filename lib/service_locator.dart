
import 'package:get_it/get_it.dart';
import 'package:spotify_clone/spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify_clone/spotify/data/repository/song/song_repository_impl.dart';
import 'package:spotify_clone/spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify_clone/spotify/data/sources/song/song_firebase_service.dart';
import 'package:spotify_clone/spotify/domain/repository/auth/auth.dart';
import 'package:spotify_clone/spotify/domain/repository/song/song.dart';
import 'package:spotify_clone/spotify/domain/usecases/auth/signin.dart';
import 'package:spotify_clone/spotify/domain/usecases/auth/signup.dart';
import 'package:spotify_clone/spotify/domain/usecases/song/get_news_songs.dart';
import 'package:spotify_clone/spotify/domain/usecases/song/get_play_list.dart';

final sl=GetIt.instance;

Future<void> initializeDependencies()async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());
}


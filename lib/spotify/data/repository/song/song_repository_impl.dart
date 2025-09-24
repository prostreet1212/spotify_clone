import 'package:dartz/dartz.dart';
import 'package:spotify_clone/spotify/data/sources/song/song_firebase_service.dart';
import 'package:spotify_clone/spotify/domain/repository/song/song.dart';

import '../../../../service_locator.dart';

class SongRepositoryImpl extends SongsRepository {
  @override
  Future<Either> getNewsSongs() async {
    return sl<SongFirebaseService>().getNewsSongs();
  }

  @override
  Future<Either> getPlayList() async {
    return await sl<SongFirebaseService>().getPlayList();
  }
}

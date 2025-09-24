import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_clone/spotify/domain/entities/song/song.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDate;
  String? urlCover;

  /*final bool isFavorite;
  final String songId;*/

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
    required this.urlCover,
    /* required this.isFavorite,
    required this.songId*/
  });

  SongModel.fromJson(Map<String, dynamic> data){
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    urlCover = data['urlCover'];
  }
}

extension SongModelX on SongModel{
  SongEntity toEntity() {
    return SongEntity(title: title!,
        artist: artist!,
        duration: duration!,
        releaseDate: releaseDate!,
        urlCover: urlCover!,
        /*isFavorite: isFavorite,
        songId: songId*/);
  }
}
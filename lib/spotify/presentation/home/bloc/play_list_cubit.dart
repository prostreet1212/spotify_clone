
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/spotify/domain/usecases/song/get_play_list.dart';
import 'package:spotify_clone/spotify/presentation/home/bloc/play_list_state.dart';

import '../../../../service_locator.dart';
import '../../../domain/usecases/song/get_news_songs.dart';

class PlayListCubit extends Cubit<PlayListState>{
  PlayListCubit():super(PlayListLoading());

  Future<void>getPlayList()async {
    var returnedSongs=await sl<GetPlayListUseCase>().call();
    returnedSongs.fold(
            (l){
          emit(PlayListFailure());
        }, (data){
      emit(PlayListLoaded(songs: data));

    });
  }

}
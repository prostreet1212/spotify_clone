import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/core/configs/constants/app_urls.dart';
import 'package:spotify_clone/spotify/domain/entities/song/song.dart';
import 'package:spotify_clone/spotify/presentation/home/bloc/news_songs_cubit.dart';
import 'package:spotify_clone/spotify/presentation/home/bloc/news_songs_state.dart';

import '../../../../core/configs/theme/app_colors.dart';
import '../../song_player/pages/song_player.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsSongsCubit()..getNewsSongs(),
      child: SizedBox(
        height: 200,
        child: BlocBuilder<NewsSongsCubit, NewsSongsState>(
          builder: (BuildContext context, state) {
            if (state is NewsSongsLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is NewsSongsLoaded) {
              return _songs(state.songs);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _songs(List<SongEntity> songs) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context)
                      => SongPlayerPage(
                        songEntity: songs[index],
                      )
                  )
              );
            },
          child: SizedBox(
            width: 160,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                 child:  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          //songs[index].urlCover
                         //'http://10.0.2.2:9199/v0/b/spotify-clone1212.firebasestorage.app/o/covers%2FBillie%20Eilish%20%2C%20Khalid%20-%20lovely.jpg?alt=media&token=cacb868c-3182-4029-8c30-d2e8ee646510'
                           AppURLs.coverFirestorage +
                              songs[index].artist +
                              ' - ' +
                              songs[index].title +
                              '.jpg'+AppURLs.mediaAlt,
                        ),
                      ),
                    ),
                   child: Align(
                     alignment: AlignmentGeometry.bottomRight,
                     child: Container(
                       height: 40,
                       width: 40,
                       transform: Matrix4.translationValues(10, 10, 0),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: context.isDarkMode ?  AppColors.darkGrey : const Color(0xffE6E6E6)
                       ),
                       child: Icon(
                         Icons.play_arrow_rounded,
                         color: context.isDarkMode ? const Color(0xff959595) : const Color(0xff555555),
                       ),
                     ),
                   ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(songs[index].title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),),
                const SizedBox(height: 5,),
                Text(
                  songs[index].artist,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 14);
      },
      itemCount: songs.length,
    );
  }
}

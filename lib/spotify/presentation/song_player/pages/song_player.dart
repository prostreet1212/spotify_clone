import 'package:flutter/material.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';

import '../../../../core/configs/constants/app_urls.dart';
import '../../../domain/entities/song/song.dart';

class SongPlayerPage extends StatelessWidget {

  final SongEntity songEntity;
  const SongPlayerPage({
    required this.songEntity,
    super.key
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: Text('Now Playing', style: TextStyle(fontSize: 18)),
        action: IconButton(
            onPressed: (){},
            icon: const Icon(
                Icons.more_vert_rounded
            )
        ),
      ),
    );
  }

  Widget _songCover(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  '${AppURLs.coverFirestorage}${songEntity.artist} - ${songEntity.title}.jpg?${AppURLs.mediaAlt}'
              )
          )
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/widgets/button/basic_app_button.dart';
import '../../../../core/configs/assets/app_images.dart';
import '../../../../core/configs/assets/app_vectors.dart';
import '../../../../core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.chooseModeBG))
            ),
          ),
          Container(
            color: Colors.black.withValues(alpha: 0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text('Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter:ImageFilter.blur(sigmaX:10,sigmaY: 10 ),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                shape: BoxShape.circle
                              ),
                            child: SvgPicture.asset(AppVectors.moon,
                            fit: BoxFit.none,),
                            ),
                          ),

                        ),
                        SizedBox(height: 15,),
                        Text('Dark mode',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: AppColors.grey,
                        ),),
                      ],
                    ),
                    SizedBox(width: 40,),
                    Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter:ImageFilter.blur(sigmaX:10,sigmaY: 10 ),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset(AppVectors.sun,
                                fit: BoxFit.none,),
                            ),
                          ),

                        ),
                        SizedBox(height: 15,),
                        Text('Light mode',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (c) => ChooseModePage()));
                    },
                    title: 'Continue'),
              ],
            ),
          ),


        ],
      ),

    );
  }
}

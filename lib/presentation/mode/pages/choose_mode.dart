import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/presentation/mode/bloc/theme_cubit.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.04, horizontal: MediaQuery.of(context).size.height * 0.04,),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.chooseModeBg), fit: BoxFit.cover)
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.center, child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text('Choose Mode', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColors.darkGrey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: SvgPicture.asset(AppVectors.moon, fit: BoxFit.none,)
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                        const Text('Dark Mode', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.1,),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.1,
                            width: MediaQuery.of(context).size.width * 0.1,
                            decoration: BoxDecoration(
                              color: AppColors.darkGrey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: SvgPicture.asset(AppVectors.sun, fit: BoxFit.none,)
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                        const Text('Light Mode', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                BasicAppButton(onPressed: (){
                }, title: 'Continue')
              ],
            ),
          )
        ],
      ),
    );
  }
}
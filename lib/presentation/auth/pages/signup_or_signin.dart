import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/helpers/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppbar(),
          Align(alignment: Alignment.topRight, child: SvgPicture.asset(AppVectors.topPattern),),
          Align(alignment: Alignment.bottomRight, child: SvgPicture.asset(AppVectors.bottomPattern),),
          Align(alignment: Alignment.bottomLeft, child: Image.asset(AppImages.authBg),),
          Align(
            alignment: Alignment.center, 
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                  Text('Enjoy Listening To Music', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                  const Text('Spotify is a proprietary Swedish audio\nstreaming and media services provider', style: TextStyle(fontSize: 17, color: Color(0xffA0A0A0)), textAlign: TextAlign.center,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                  Row(
                    children: [
                      Expanded(flex: 2, child: BasicAppButton(onPressed: (){}, title: 'Register')),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                      TextButton(onPressed: (){}, child: Text('Sign in', style: TextStyle(color: context.isDarkMode ? Colors.white : Colors.black, fontSize: 19, fontWeight: FontWeight.bold,),),),
                    ],
                  )
                ],
                        ),
            ),)
        ],
      ),
    );
  }
}
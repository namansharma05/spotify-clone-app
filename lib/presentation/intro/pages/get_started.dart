import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40,),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.introBg), fit: BoxFit.cover,),
            ),
            child: Column(
              children: [
                Align(alignment: Alignment.center, child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text('Enjoy Listening To Music', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18,),),
                const SizedBox(height: 21,),
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.', style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.grey,fontSize: 13,), textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                BasicAppButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ChooseMode()));
                }, title: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
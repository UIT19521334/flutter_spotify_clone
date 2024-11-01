import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify_clone/core/configs/assets/app_images.dart';
import 'package:flutter_spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify_clone/core/configs/theme/app_colors.dart';
import 'package:flutter_spotify_clone/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStatedPage extends StatefulWidget {
  const GetStatedPage({super.key});

  @override
  State<GetStatedPage> createState() => _GetStatedPageState();
}

class _GetStatedPageState extends State<GetStatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              )
            ),
            
          ),

          Container(
            color: Colors.black.withOpacity(0.15),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                const SizedBox(height: 21),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ChooseModePage()
                      ),
                    );
                  },  
                  title: 'Get Started',
                )
              ]  
            )
          )
        ],
      ),
    );
  }
}
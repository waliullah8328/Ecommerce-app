import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? TImages.lightAppLogo : TImages.darkAppLogo)),

        Text(TTextStrings.loginTitle, style: Theme
            .of(context)
            .textTheme
            .headlineMedium,),
        const SizedBox(height: TSizes.sm,),
        Text(TTextStrings.loginSubTitle, style: Theme
            .of(context)
            .textTheme
            .bodyMedium,),

      ],

    );
  }
}
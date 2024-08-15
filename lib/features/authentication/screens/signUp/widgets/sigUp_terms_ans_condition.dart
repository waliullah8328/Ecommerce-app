import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TTermAndConditions extends StatelessWidget {
  const TTermAndConditions({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text.rich(TextSpan(
            children: [
              TextSpan(text: "${TTextStrings.iAgreeTo} ",style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: TTextStrings.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? TColors.white: TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:  dark? TColors.white: TColors.primary,
              )),

              TextSpan(text: " ${TTextStrings.and} ",style: Theme.of(context).textTheme.bodySmall),

              TextSpan(text: TTextStrings.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? TColors.white: TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor:  dark? TColors.white: TColors.primary,
              )),
            ]

        )),

      ],
    );
  }
}
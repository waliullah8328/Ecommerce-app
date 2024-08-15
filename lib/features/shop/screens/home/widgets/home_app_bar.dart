
import 'package:flutter/material.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/widges/product/product_cart/cart_menu_icon.dart';

import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTextStrings.homeAppbarTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
          Text(TTextStrings.homeAppbarSubTitle,style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),

        ],
      ),
      action: [
        TCartCounterIcon(onPress: (){},iconColor: TColors.white,),
      ],

    );
  }
}
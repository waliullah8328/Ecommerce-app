import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/widges/custom_shapes/curve_edges/curved_edges_widget.dart';
import 'package:t_store/common/widges/icons/circular_icon.dart';
import 'package:t_store/common/widges/images/t_rounded_images.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(child: Container(
      color: dark? TColors.darkerGrey: TColors.light,
      child:  Stack(
        children: [

          // Main large image
          const SizedBox(
              height:400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius*2),
                child: Center(child: Image(image: AssetImage(TImages.onBoardingImage3))),
              )),

          // Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_,index)=>TRoundedImage(
                    imageUrl: TImages.toyIcon,
                    width: 80,
                    background: dark?TColors.black:TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                  separatorBuilder: (_,__)=>const SizedBox(width: TSizes.spaceBtwItems,),
                  itemCount: 6
              ),
            ),
          ),

          // AppBar icon
          const TAppBar(showBackArrow: true,action: [TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)],)



        ],
      ),

    ),);
  }
}
import 'package:flutter/material.dart';
import 'package:t_store/common/widges/brand/t_brand_card.dart';
import 'package:t_store/common/widges/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      padding: EdgeInsets.all( TSizes.md),
      child: Column(
        children: [
          // Brand With Product Count
          TBranCard(showBorder: false,),
          const SizedBox(height: TSizes.spaceBtwItems,),

          // Brand Top Three Product
          Row(
            children: images.map((image) => brandTopProductImageWidget(context, image)).toList(),
          ),
          

        ],
      ),
    );
  }

  Expanded brandTopProductImageWidget(BuildContext context,String image) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: THelperFunction.isDarkMode(context)? TColors.darkGrey:TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.only(right: TSizes.md),
        child:  Image(image: AssetImage(image),fit: BoxFit.contain,),
      ),
    );
  }
}
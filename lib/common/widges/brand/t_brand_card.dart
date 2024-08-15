import 'package:flutter/material.dart';
import 'package:t_store/common/widges/custom_shapes/containers/TRoundedContainer.dart';
import 'package:t_store/common/widges/images/t_circular_image.dart';
import 'package:t_store/common/widges/product/product_cards/product_card_vertical.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TBranCard extends StatelessWidget {
  const TBranCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: TCircularImage(
                image: TImages.smartIcon,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunction.isDarkMode(context)?TColors.white:TColors.dark,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleTextWithVarifiedIcon(title: "Nike",brandTextSize: TextSizes.large,),
                  Text("256 product",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
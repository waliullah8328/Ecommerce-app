import 'package:flutter/material.dart';
import 'package:t_store/common/widges/brand/brand_show_case.dart';
import 'package:t_store/common/widges/layout/grid_layout.dart';
import 'package:t_store/common/widges/product/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widges/text/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            children: [

              // Brands
              const TBrandShowCase(images: [TImages.toyIcon,TImages.animalIcon,TImages.clothIcon],),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TBrandShowCase(images: [TImages.toyIcon,TImages.animalIcon,TImages.clothIcon],),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Product May you like
              TSectionHeading(title: "You might like", showActionButton: true,onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems,),
              TGridLayout(itemCount: 4, itemBuilder: (_,index){
                return const TProductCardVertical();
              }),
              const SizedBox(height: TSizes.spaceBtwSections,),

            ],
          ) ,),
      ],
    );
  }
}
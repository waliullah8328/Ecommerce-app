import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/widges/icons/circular_icon.dart';
import 'package:t_store/common/widges/layout/grid_layout.dart';
import 'package:t_store/common/widges/product/product_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/home/home_screen.dart';
import 'package:t_store/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Wishlist",style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          TCircularIcon(icon: Iconsax.add,onPress: ()=> Get.to(const HomeScreen()),)
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder:(_,index)=>const TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}

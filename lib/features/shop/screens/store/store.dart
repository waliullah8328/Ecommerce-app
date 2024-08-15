


import 'package:flutter/material.dart';

import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/appbar/tabbar.dart';

import 'package:t_store/common/widges/brand/t_brand_card.dart';

import 'package:t_store/common/widges/custom_shapes/containers/search_container.dart';

import 'package:t_store/common/widges/layout/grid_layout.dart';

import 'package:t_store/common/widges/product/product_cart/cart_menu_icon.dart';
import 'package:t_store/common/widges/text/section_heading.dart';
import 'package:t_store/features/shop/screens/store/widgets/categories_tab.dart';
import 'package:t_store/utils/constants/colors.dart';

import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: [
            TCartCounterIcon(onPress: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunction.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // SearchBar
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      // Featured Brands
                      TSectionHeading(
                        title: "Featured Brands",
                        showActionButton: true,
                        onPress: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                      TGridLayout(itemCount: 4,mainAxisExtent: 88, itemBuilder: (_,index){

                        return const TBranCard(showBorder: true,);
                      }),


                    ],
                  ),
                ),

                // Tab
                bottom: const TTabbar(tabs: [
                  Tab(child:Text("Sports")),
                  Tab(child:Text("Furniture")),
                  Tab(child:Text("Electronics")),
                  Tab(child:Text("Clothes")),
                  Tab(child:Text("Cosmetics")),
                ]
                )              ),
            ];
          },
          body:  const TabBarView(children: [
            CategoriesTab(),
            CategoriesTab(),
            CategoriesTab(),
            CategoriesTab(),
            CategoriesTab(),


          ]),
        ),
      ),
    );
  }
}







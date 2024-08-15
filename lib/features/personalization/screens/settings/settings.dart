import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/widges/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widges/images/t_circular_image.dart';
import 'package:t_store/common/widges/list_tiles/settings_menu_tile.dart';
import 'package:t_store/common/widges/list_tiles/user_profile_title.dart';
import 'package:t_store/common/widges/text/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // User Profile Card
                const TUserProfileTile(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
              ],
            )),

            // -- Body

            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subtitle: "Set shopping delivery address",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subtitle: "Add, remove product and move to checkout",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subtitle: "In-process and completed order",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subtitle: "Withdraw balance to registered bank account",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subtitle: "List of all discounted coupons",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subtitle: "Set any kinds of notification",
                    onTap: () {},
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subtitle: "Manage data use and connected account",
                    onTap: () {},
                  ),

                  // App settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: "Apps Settings",showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subtitle: "Upload data to your Cloud Firebase",
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subtitle: "Set recommendation based on location",
                    traling: Switch(value: true, onChanged: (value){}),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subtitle: "Search result is safe for all ages",
                    traling: Switch(value: false, onChanged: (value){}),
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subtitle: "Set image quality to seen",
                    traling: Switch(value: false, onChanged: (value){}),
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text("Log Out")),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections*2.5,),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
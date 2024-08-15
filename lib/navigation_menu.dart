import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/screens/home/home_screen.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/wishList/wishList_screen.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        backgroundColor: dark? TColors.black: TColors.white,
        indicatorColor: dark? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
        onDestinationSelected: (index)=> controller.selectedIndex.value=index,
        destinations: const [
        NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
        NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
        NavigationDestination(icon: Icon(Iconsax.heart), label: "WishList"),
        NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),

      ],)),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
  ];

}

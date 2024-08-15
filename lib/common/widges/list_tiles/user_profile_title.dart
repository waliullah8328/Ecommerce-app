import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widges/images/t_circular_image.dart';
import 'package:t_store/features/personalization/screens/profile/profile.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.uniformIcon,width: 50,height: 50,padding: 0,),
      title: Text("Wali Ullah Ripon",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text("waliullah8328@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: ()=>Get.to(()=> const ProfileScreen()), icon: const Icon(Iconsax.edit,color: TColors.white,)),
    );
  }
}
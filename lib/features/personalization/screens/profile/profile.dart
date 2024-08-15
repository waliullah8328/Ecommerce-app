import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/appbar/appbar.dart';
import 'package:t_store/common/widges/images/t_circular_image.dart';
import 'package:t_store/common/widges/text/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title:const  Text("Profile"),showBackArrow: true,),

      body: SingleChildScrollView(
        child:  Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user1,width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text("Change Profile Picture"))

                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
              const TSectionHeading(title: "Profile Information",showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),


              ProfileMenu(title: 'Name',value: "Wali Ullah Ripon",onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems/2.5,),
              ProfileMenu(title: 'User name',value: "waliullah8328",onPress: (){},),

              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Heading Personal Info
              const TSectionHeading(title: "Personal Information",showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              ProfileMenu(title: 'User ID',value: "45689",onPress: (){},icon: Iconsax.copy,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              ProfileMenu(title: 'Email',value: "waliullah8328@gmail.com",onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              ProfileMenu(title: 'Phone',value: "01751138328",onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              ProfileMenu(title: 'Gender',value: "Male",onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems/2,),
              ProfileMenu(title: 'Date of Birth',value: "15 December, 2002",onPress: (){},),
              const SizedBox(height: TSizes.spaceBtwItems/2,),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(child: TextButton(onPressed: (){}, child: const Text("Close Account",style: TextStyle(color: Colors.red),)))




            ],
          ),

        ),
      ),
    );
  }
}



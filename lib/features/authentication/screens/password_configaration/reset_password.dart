import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            // Image
            Image(image:  const AssetImage(TImages.deliveredImageIllustration),width: THelperFunction.screenWidth()*0.6,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            //Title and Subtitle
            Text(TTextStrings.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),

            const SizedBox(height: TSizes.spaceBtwSections,),
            Text(TTextStrings.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            // Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTextStrings.done)),),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: const Text(TTextStrings.resendEmail)),),
          ],),
        ),
      ),
    );
  }
}

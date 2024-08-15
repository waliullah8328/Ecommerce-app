import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widges/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/screens/login/login_screen.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=>const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(TImages.deliveredImageIllustration),width: THelperFunction.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              //Title and Subtitle
              Text(TTextStrings.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text("support@codingwitht",style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              Text(TTextStrings.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              // Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(()=> SuccessScreen(
                image:TImages.staticSuccessIllustration,
                title:TTextStrings.yourAccountCreatedTitle ,
                subtitle: TTextStrings.yourAccountCreatedSubTitle,
                onPress: ()=> Get.to(()=> const LoginScreen()),)), child: const Text(TTextStrings.tContinue)),),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){

              }, child: const Text(TTextStrings.resendEmail)),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configaration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signUp/signUp_screen.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [

          // Email
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTextStrings.email
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFieldRadius,),

          // Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTextStrings.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFieldRadius/2,),

          // Remember Me and Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TTextStrings.rememberMe),
                ],
              ),

              // Forget Password
              TextButton(onPressed: ()=> Get.to(()=> const ForgetPassword()), child: const Text(TTextStrings.forgetPassword))
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwSections,),

          // Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=> Get.to(()=>const NavigationMenu()), child: const Text(TTextStrings.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems,),

          // Create Account Button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: (){
                Get.to(const SignUpScreen());
              }, child: const Text(TTextStrings.createAccount))),


        ],
      ),
    ));
  }
}
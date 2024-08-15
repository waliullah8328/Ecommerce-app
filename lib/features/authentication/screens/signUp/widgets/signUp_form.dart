import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signUp/varify_email/varify_email.dart';
import 'package:t_store/features/authentication/screens/signUp/widgets/sigUp_terms_ans_condition.dart';

import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class TSignUpForm extends StatelessWidget {

  const TSignUpForm({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTextStrings.firstName,
                        prefixIcon: Icon(Iconsax.user),
                      )),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwInputFieldRadius,
                ),
                Expanded(
                  child: TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTextStrings.lastName,
                        prefixIcon: Icon(Iconsax.user),
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFieldRadius,
            ),
            // User Name
            TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTextStrings.userName,
                  prefixIcon: Icon(Iconsax.user_edit),
                )),
            const SizedBox(
              height: TSizes.spaceBtwInputFieldRadius,
            ),
            // User Email
            TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTextStrings.email,
                  prefixIcon: Icon(Iconsax.direct),
                )),

            const SizedBox(
              height: TSizes.spaceBtwInputFieldRadius,
            ),
            // User Phone Number
            TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: TTextStrings.phoneNumber,
                  prefixIcon: Icon(Iconsax.call),
                )),

            const SizedBox(
              height: TSizes.spaceBtwInputFieldRadius,
            ),
            // User Phone Number
            TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: TTextStrings.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                )),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),


            // Terms and condition check box
            const TTermAndConditions(),
            const SizedBox(height: TSizes.spaceBtwSections,),


            // SignUp Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(const VerifyEmail());
              }, child: const Text(TTextStrings.createAccount)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections,),
            // Divider



          ],
        ));
  }
}


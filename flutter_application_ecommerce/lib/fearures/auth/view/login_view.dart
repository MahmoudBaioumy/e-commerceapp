import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/core/function/routing.dart';
import 'package:flutter_application_ecommerce/core/utils/Text_Style.dart';
import 'package:flutter_application_ecommerce/core/utils/app_Colors.dart';
import 'package:flutter_application_ecommerce/core/widget/Custom_But.dart';
import 'package:flutter_application_ecommerce/core/widget/customtextfiled.dart';
import 'package:flutter_application_ecommerce/fearures/auth/view/signup_view.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColor.backgrocolor,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/buy.png',
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        'Buy It',
                        style: getTitelstyle(
                            color: AppColor.blackcolor, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heigth * .1,
            ),
            const CustomTextfiled(
              hint: 'Enter Your Email',
              icon: Icons.email,
            ),
            SizedBox(
              height: heigth * .02,
            ),
            const CustomTextfiled(
                hint: 'Enter Your Password', icon: Icons.lock),
            SizedBox(
              height: heigth * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: CustomButton(text: 'Login', onPressed: () {}),
            ),
            SizedBox(
              height: heigth * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t Have an account ?',
                  style:
                      getBodystyle(color: AppColor.white1color, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      push(context, const signupViw());
                    },
                    child: Text(
                      'Sign Up',
                      style: getBodystyle(fontSize: 20),
                    ))
              ],
            )
          ],
        ));
  }
}

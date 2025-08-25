import 'package:flutter/material.dart';
import 'package:food_recipe_app/constants/assets.dart';
import 'package:food_recipe_app/constants/my_colors.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "Create an account",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "Let’s help you set up your account,\n it won’t take long.",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: MyColors.myBlack2,
              ),
            ),
            SizedBox(height: 20),
            CustomTextFormField(headerTitle: "Name", textHint: "Enter Name"),
            SizedBox(height: 20),
            CustomTextFormField(headerTitle: "Email", textHint: "Enter Email"),
            SizedBox(height: 20),
            CustomTextFormField(
              headerTitle: "Password ",
              textHint: "Enter Password",
            ),
            SizedBox(height: 20),
            CustomTextFormField(
              headerTitle: "Confirm Password ",
              textHint: "Retype Password",
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.mySecondary100),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Accept terms & Condition",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: MyColors.mySecondary100,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Center(child: CustomButton(title: "Sign UP ",width: 315 ,withIcon: true)),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    endIndent: 10,
                    indent: 70,
                    height: 20,
                    thickness: 1,
                    color: MyColors.myGray4,
                  ),
                ),
                Text(
                  "Or Sign in With",
                  style: TextStyle(fontSize: 11, color: MyColors.myGray4),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 70,
                    indent: 10,
                    height: 20,
                    thickness: 1,
                    color: MyColors.myGray4,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColors.myGray4),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.myGray4,
                        spreadRadius: 1,
                        blurRadius: 3,
                        blurStyle: BlurStyle.normal,
                        offset: Offset.fromDirection(3),
                      ),
                      BoxShadow(color: MyColors.myWhite),
                    ],
                  ),
                  child: Image.asset(Assets.assetsImagesGoogle),
                ),
                SizedBox(width: 10),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyColors.myGray4),
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.myGray4,
                        spreadRadius: 1,
                        blurRadius: 3,
                        blurStyle: BlurStyle.normal,
                        offset: Offset.fromDirection(3),
                      ),
                      BoxShadow(color: MyColors.myWhite),
                    ],
                  ),
                  child: Image.asset(Assets.assetsImagesFacebook),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(
                    color: MyColors.myBlack2,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: MyColors.mySecondary100,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

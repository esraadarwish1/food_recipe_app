import 'package:flutter/material.dart';
import 'package:food_recipe_app/widgets/custom_bottom.dart';
import 'package:food_recipe_app/widgets/custom_text_form_field.dart';


class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          // ArrowBackWidget(),
          SizedBox(height: 37),

          Center(
            child: Text(
              "نسيت كلمة المرور",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              "يرجى ادخال رقم الهاتف المسجل لدينا  \n  وسنقوم بإرسال رمز التحقق له",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffB5B7BF)),
            ),
          ),
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomTextFormField(
                    headerTitle: "رقم الجوال",
                    textHint: "رقم الجوال",
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: 102,
                  child: Column(
                    children: [
                      SizedBox(height: 36),
                      CustomTextFormField(
                        hintColor: Colors.black,
                        textHint: "966+",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 7),
          Center(
            child: CustomButton(title: "إرسال", width: 315,textColor: Color(0xffFFFFFF)),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}

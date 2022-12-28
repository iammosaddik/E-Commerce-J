import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';
import '../Bottom Navigation Bar/bottom_navigation_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0,right: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Hello, Welcome 👋',style:  TextStyle(color: AppColor.subTitleColor,fontSize: 14),),
                        SizedBox(height: 4,),
                        Text('Lets Login or Signup',style:  TextStyle(color: AppColor.subTitleColor,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      child:  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                           image: AssetImage('images/assit.png'),fit: BoxFit.fill
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 33,),
              Center(
                child: Container(
                  height: 177,
                  width: 177,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/bag.png'),fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Email',style: TextStyle(color: AppColor.subTitleColor,fontWeight: FontWeight.bold,fontSize: 14),),
                    ),
                    const SizedBox(height: 7,),
                    AppTextField(textFieldType: TextFieldType.EMAIL,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                      ),
                      fillColor: AppColor.textFieldColor,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                      filled: true,
                    ),
                    ),
                    const SizedBox(height: 11,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Password',style: TextStyle(color: AppColor.subTitleColor,fontWeight: FontWeight.bold,fontSize: 14),),
                    ),
                    const SizedBox(height: 7,),
                    AppTextField(textFieldType: TextFieldType.PASSWORD,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                      ),
                      fillColor: AppColor.textFieldColor,
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                      filled: true,
                    ),
                    ),
                    const SizedBox(height: 26,),
                    GestureDetector(
                      onTap: ((){
                        const Home().launch(context);
                      }),
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColor.buttonColor,
                        ),
                        child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    const SizedBox(height: 14,),
                    Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColor.buttonSubColor,
                      ),
                      child: Center(child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

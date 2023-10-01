import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backColor,
        body: SizedBox(
          height: height,
          width: width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: height,
                  color: AppColors.mainColor,
                  child: const Center(
                    child: Text(
                      'Admin Star',
                      style: TextStyle(
                        fontSize: 48.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              Expanded(
                child: Container(
                  height: height,
                  margin: EdgeInsets.symmetric(horizontal: height * 0.12),
                  color: AppColors.backColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.145,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Let's",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: AppColors.backColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                color: AppColors.blueDarkColor,
                                fontSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      const Text(
                        'Hey, Enter your details to get into your account.',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(height: height * 0.064),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blueDarkColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor.withOpacity(0.5),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mail_sharp),
                            ),
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.010),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blueDarkColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.whiteColor,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor.withOpacity(0.5),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.password_sharp),
                            ),
                            hintText: 'Enter  Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColors.blueDarkColor.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

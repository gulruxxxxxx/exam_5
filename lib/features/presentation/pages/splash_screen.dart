import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:productivee/features/presentation/pages/login_page.dart';
import '../../../../assets/constants/colors.dart';
import '../../../../assets/constants/icons.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Builder(
            builder: (context) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(274),
                    SvgPicture.asset(AppIcons.logo),
                    const Gap(10),
                    Text(
                      "Productive",
                      style: TextStyle(
                          letterSpacing: 0.4,
                          color: AppColors.c_FFFFFF,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                    const Gap(307),
                    const CupertinoActivityIndicator(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

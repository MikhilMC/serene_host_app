import 'package:flutter/material.dart';
import 'package:serene_host_app/app_constants/app_colors.dart';
import 'package:serene_host_app/app_modules/introduction_screen_module/models/onboarding_page_model.dart';
import 'package:serene_host_app/app_modules/introduction_screen_module/widgets/onboarding_page_presenter.dart';
import 'package:serene_host_app/app_modules/login_module/view/login_screen.dart';
import 'package:serene_host_app/app_utils/app_localstorage.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        pages: [
          OnboardingPageModel(
            title: 'List Your Property',
            description:
                'Turn your extra space into an opportunity! List your property and start hosting guests from around the world. It\'s easy to get started and manage your listings.',
            imageUrl: 'assets/images/onboarding_image_1.png',
            bgColor: AppColors.onBoardingPage1Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Create a Welcoming Space',
            description:
                'Make your guests feel at home. Showcase your space with great photos and details to attract travelers looking for a comfortable stay.',
            imageUrl: 'assets/images/onboarding_image_2.png',
            bgColor: AppColors.onBoardingPage2Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
          OnboardingPageModel(
            title: 'Set Your Rules',
            description:
                'You\'re in control. Set house rules, availability, and pricing to ensure your property fits your lifestyle and meets your guests\' expectations.',
            imageUrl: 'assets/images/onboarding_image_3.png',
            bgColor: AppColors.onBoardingPage3Color,
            textColor: Colors.white,
            isLightBackground: false,
          ),
          OnboardingPageModel(
            title: 'Earn Money Easily',
            description:
                'Hosting pays off! Earn extra income by sharing your space. Get paid securely and track your earnings effortlessly through our platform.',
            imageUrl: 'assets/images/onboarding_image_4.png',
            bgColor: AppColors.onBoardingPage4Color,
            textColor: Colors.white,
            isLightBackground: true,
          ),
        ],
        onSkip: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );

          await AppLocalstorage.disableIntroScreen();
        },
        onFinish: () async {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );

          await AppLocalstorage.disableIntroScreen();
        },
      ),
    );
  }
}

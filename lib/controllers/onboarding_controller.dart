import 'package:flutter/material.dart';
import 'package:flutter_application_/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onborardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onborardingPages = [
    OnboardingInfo('Your World of Bets',
        'Bet on matches, compete with your friends and win money!'),
    OnboardingInfo('It\'s time to Win',
        'With all information you need, you can start playing and winning.Good Luck!'),
    OnboardingInfo('Premium Features',
        'Feel the exuberance and excitement of playing to win in this gaming environment rught through your mobiled evices'),
    OnboardingInfo('Win Glorious Prizes!',
        'Ready to challenge players from all over the world in the ultimate betting contest?\nBet for FREE on sports and Esports and compete for 12 Million Bether in prizes!')
  ];
}

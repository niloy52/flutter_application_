import 'package:flutter/material.dart';
import 'package:flutter_application_/controllers/onboarding_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// ignore: unused_import
import 'package:introduction_screen/introduction_screen.dart';
import 'start.dart';

class OnboardingPage extends StatelessWidget {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageIndex,
                itemCount: _controller.onborardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                            center: Alignment.topCenter,
                            radius: 1.3,
                            colors: [
                          Color(0xFF202455),
                          Color(0xFF151241),
                          Color(0xFF151241),
                        ],
                            stops: [
                          0.4,
                          0.4,
                          0.2
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _controller.onborardingPages[index].title,
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Text(
                            _controller.onborardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 260,
              left: 165,
              child: Row(
                children: List.generate(
                  _controller.onborardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: _controller.selectedPageIndex.value == index
                              ? Color(0xFF40C4FF)
                              : Color(0xFF204465),
                          shape: BoxShape.circle),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 20,
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF878993)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Start()));
                  },
                  child: Text('Skip this'),
                )),
            Positioned(
              right: 10,
              bottom: 20,
              child: ElevatedButton(
                  onPressed: () {
                    if (_controller.isLastPage == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Start()));
                    } else
                      _controller.forwardAction();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF151241),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                  child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFEA80FC), Color(0xFF5C6BC0)]),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        width: 80,
                        height: 40,
                        alignment: Alignment.center,
                        child: Obx(() {
                          return Text(
                              _controller.isLastPage ? 'Start' : 'Next');
                        }),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

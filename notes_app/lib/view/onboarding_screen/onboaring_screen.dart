// Onboarding Screen
import 'package:firebase_setup/view/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  List<OnboardingData> onboardingPages = [
    OnboardingData(
      icon: Icons.note_add,
      title: "Create Notes",
      description: "Easily create and organize your notes with simple tap",
    ),
    OnboardingData(
      icon: Icons.color_lens,
      title: "Colorful Notes",
      description: "Customize your notes with beautiful colors and themes",
    ),
    OnboardingData(
      icon: Icons.sync,
      title: "Sync Everywhere",
      description: "Access your notes from anywhere, anytime",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingPages.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingPage(data: onboardingPages[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text('Skip'),
                ),
                Row(
                  children: List.generate(
                    onboardingPages.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: currentPage == index ? 12 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color:
                            currentPage == index
                                ? Colors.amber
                                : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    if (currentPage < onboardingPages.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      SharedPreferences preferences =
                          await SharedPreferences.getInstance();
                      preferences.setBool('isview', true);
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    }
                  },
                  child: Text(
                    currentPage < onboardingPages.length - 1 ? 'Next' : 'Start',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingData {
  final IconData icon;
  final String title;
  final String description;

  OnboardingData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingData data;

  const OnboardingPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(data.icon, size: 120, color: Colors.amber),
          SizedBox(height: 50),
          Text(
            data.title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}

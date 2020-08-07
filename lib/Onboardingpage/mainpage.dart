import 'package:flutter/material.dart';
import 'package:tiktok_clone/account/logandsignup.dart';

class OnboardingSc extends StatefulWidget {
  OnboardingSc({Key key}) : super(key: key);

  _OnboardingScState createState() => _OnboardingScState();
}

class _OnboardingScState extends State<OnboardingSc> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              _buildPageContent(
                  image: 'assets/images/onboarding0.png',
                  title: 'In hac habitasse platea dictumst.',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In hac habitasse platea dictumst.',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              _buildPageContent(
                  image: 'assets/images/onboarding2.png',
                  title: 'In hac habitasse platea dictumst.',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.')
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 2
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      for (int i = 0; i < _totalPages; i++)
                        i == _currentPage
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false)
                    ]),
                  ),
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          color: Color(0xFF0074E4),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          :
          Padding(
              padding: const EdgeInsets.only(left: 95.0, right: 60, bottom: 20),
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                textColor: Colors.white,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Text(
                  'Get Started Now',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
    );
  }

  Widget _buildPageContent({
    String image,
    String title,
    String body,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(image),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              height: 2.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(
              fontSize: 12,
              height: 2.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

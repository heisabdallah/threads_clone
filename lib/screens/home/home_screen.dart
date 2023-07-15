import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        toolbarHeight: 20,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/search.svg",
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/add.svg",
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/like.svg",
                  colorFilter:
                      ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ]),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/threads.svg",
              height: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) {
                return const Post();
              },
            ),
          ],
        ),
      ),
    );
  }
}

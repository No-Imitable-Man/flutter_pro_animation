import 'package:flutter/material.dart';
import 'package:flutter_pro_animation/constants.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedBottomNavigationBar extends StatelessWidget {
  const AnimatedBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.selectedTab,
  });

  final int selectedTab;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: List.generate(
        navIconsSrc.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIconsSrc[index],
            color: index == selectedTab ? primaryColor : Colors.white54,
          ),
          label: "",
        ),
      ),
    );
  }
}

List<String> navIconsSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg",
];

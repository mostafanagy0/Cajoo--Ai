import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/home/presentation/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onItemTapped,
  });
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(), // عشان نعمل notch للزرار الدائري
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
                widget.onItemTapped(currentIndex);
              });
            },
            child: NavigationBarItem(
              image: currentIndex == 0
                  ? Assets.imagesActivehome
                  : Assets.imagesInactivehome,
              title: 'Home',
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
                widget.onItemTapped(currentIndex);
              });
            },
            child: NavigationBarItem(
              image: currentIndex == 1
                  ? Assets.imagesActiveprofile
                  : Assets.imagesInactiveprofile,
              title: 'Profile',
            ),
          ),
        ],
      ),
    );
  }
}

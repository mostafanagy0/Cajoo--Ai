import 'package:cajoo/feature/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:cajoo/feature/home/presentation/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _HomeViewState();
}

class _HomeViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainViewBody(
        currentViewIndex: currentViewIndex,
       
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          setState(() {
            currentViewIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentViewIndex = 2;
          });
        },
        backgroundColor: const Color(0xFF9882B9),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

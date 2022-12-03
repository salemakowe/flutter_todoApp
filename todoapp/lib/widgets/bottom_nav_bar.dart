import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return const GNav(
      //gap: 2,
      tabs: [
        GButton(
          icon: Icons.home,
          text: "Home",
        ),
        GButton(
          icon: Icons.account_circle,
          text: "Profile",
        ),
        GButton(
          icon: Icons.add,
          text: "Add Notes",
        ),
        GButton(
          icon: Icons.settings,
          text: "Settings",
        ),
      ],
    );
  }
}

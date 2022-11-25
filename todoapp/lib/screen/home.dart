import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/widgets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: todoAppBar(),
    );
  }

// AppBar customization
  AppBar todoAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "TodoApp",
        style: GoogleFonts.libreBaskerville(
          color: todoBlack,
        ),
      ),
      elevation: 0,
      backgroundColor: todoBGColor,

      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: todoBlack,
        ),
      ),
      //IconButton
    );
  }
}

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
      backgroundColor: todoBGColor,
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

      //IconButton

      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: todoBlack,
        ),
      ),

      //for display picture
      actions: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("img/avatar.jpeg"),
          ),
        )
      ],
    );
  }
}

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TodoAppBar extends StatefulWidget {
  const TodoAppBar({super.key});

  @override
  State<TodoAppBar> createState() => _TodoAppBarState();
}

class _TodoAppBarState extends State<TodoAppBar> {
  @override
  Widget build(BuildContext context) {
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
      iconTheme: const IconThemeData(color: todoBlack),

      //IconButton
      // leading: IconButton(
      //   onPressed: () {},
      //   icon: const Icon(
      //     Icons.menu,
      //     color: todoBlack,
      //   ),
      // ),

      //for display picture
      actions: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "assets/img/avatar.jpeg",
          ),
        ),
      ],
    );
  }
}

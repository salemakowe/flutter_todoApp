import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/widgets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBGColor,
      //appBar
      appBar: todoAppBar(),

      //the body
      body: Column(
        children: [
          SingleChildScrollView(
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) {},
              children: [
                for (final value in items)
                  Text(
                    value,
                    key: Key(value),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //---------------------------
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
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset("assets/img/avatar.jpeg"),
        )
      ],
    );
  }
}

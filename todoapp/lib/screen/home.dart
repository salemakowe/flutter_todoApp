import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/widgets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBGColor,
      //appBar
      appBar: todoAppBar(),

      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
      ),

      //the body
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ReorderableListView(
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) newIndex--;
              final item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          children: [
            for (final item in items)
              ListTile(
                key: ValueKey(item),
                title: Text(item),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add Task",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  //Widgets
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

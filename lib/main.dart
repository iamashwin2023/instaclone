import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:rvonlineshoppingdemo/state/navigationprovider.dart';
import 'package:rvonlineshoppingdemo/view/myhomepage.dart';
import 'package:rvonlineshoppingdemo/view/personpage.dart';
import 'package:rvonlineshoppingdemo/view/reelspage.dart';
import 'package:rvonlineshoppingdemo/view/searchpage.dart';
import 'package:rvonlineshoppingdemo/view/uploadpostpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: MaterialApp(
          theme: ThemeData(
              iconTheme: IconThemeData(
                  color: const Color.fromARGB(255, 255, 255, 255)),
              appBarTheme: AppBarTheme(color: Colors.black),
              bottomAppBarTheme:
                  BottomAppBarTheme(color: Colors.black, height: 50),
              primaryColor: Colors.black,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          debugShowCheckedModeBanner: false,
          title: 'BottomAppBar Navigation',
          home: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    UploadPostSCreen(),
    ReelsScreen(),
    PersonScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Consumer<NavigationProvider>(
            builder: (context, navigationProvider, _) =>
                pages[navigationProvider.currentIndex],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: SafeArea(
                child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(context, 0, Icons.home_outlined, Icons.home),
            buildIconButton(context, 1, Icons.search_outlined, Icons.search),
            buildIconButton(context, 2, Icons.add_box_outlined, Icons.add_box),
            buildIconButton(context, 3, Icons.video_collection_outlined,
                Icons.video_collection),
            buildIconButton(context, 4, Icons.person_outline, Icons.person),
          ],
        ))));
  }

  IconButton buildIconButton(
      BuildContext context, int index, IconData beforIcon, IconData afterIcon) {
    final currentProvider =
        Provider.of<NavigationProvider>(context, listen: false);

    return IconButton(
        onPressed: () {
          setState(() {
            currentProvider.setIndex(index);
          });
        },
        icon: currentProvider.currentIndex == index
            ? Icon(
                afterIcon,
                size: 30,
              )
            : Icon(
                beforIcon,
              ));
  }
}

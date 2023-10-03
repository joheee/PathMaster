import 'package:flutter/material.dart';
import 'package:path_master/component/custom_bottom_bar_item.dart';
import 'package:path_master/config/variable.dart';
import 'package:path_master/page/form.dart';
import 'package:path_master/page/profile.dart';

class DefaultLayout extends StatefulWidget {

  final List<Widget> children;
  final bool isBottomBar;
  const DefaultLayout({
    super.key, 
    required this.children,
    required this.isBottomBar,
  });

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Variable.backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.children
            ),
          ),
        ),
        bottomNavigationBar: Visibility(
          visible: widget.isBottomBar,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 60, // Set the height of the custom bottom navigation bar
                color: Variable.whiteShadeColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBottomBarItem(
                    index: 0,
                    iconData: Icons.map_outlined,
                    onTap: () {},
                  ),
                  CustomBottomBarItem(
                    index: 1,
                    iconData: Icons.language,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const FormPage())
                      );
                    },
                  ),
                  CustomBottomBarItem(
                    index: 2,
                    iconData: Icons.person_outlined,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfilePage())
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_clone/utils/dimentions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key, required this.mobileScreenLayout, required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints)
        {
          if(Constraints.maxWidth > webScreenSize)
            {
              return webScreenLayout;
            }
          return mobileScreenLayout;
        },
    );
  }
}

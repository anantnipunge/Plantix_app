import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeSearchBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  _HomeSearchBarState createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  bool isHomeSearchBarExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(isHomeSearchBarExpanded ? Icons.close : Icons.manage_search_outlined, size: 40,),
        onPressed: () {
          setState(() {
            isHomeSearchBarExpanded = !isHomeSearchBarExpanded;
          });
        },
      ),
      centerTitle: true,
      toolbarOpacity: 0.8,
      actions: [
        Visibility(
          visible: isHomeSearchBarExpanded,
          child: Expanded(
            child: TextField(
              style: TextStyle(color: kDarkGreenColor),
              cursorColor: kDarkGreenColor,
              decoration: InputDecoration(
                filled: true,
                fillColor: kGinColor,
                hintText: 'Search plants and fruits',
                hintStyle: TextStyle(color: kGreyColor),
                prefixIcon: Icon(
                  Icons.search,
                  color: kDarkGreenColor,
                  size: 26.0,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.mic),
                  color: kDarkGreenColor,
                  iconSize: 26.0,
                  splashRadius: 20.0,
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kGinColor),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ),
        IconButton(onPressed: ()=>(), icon: Icon(Icons.account_circle_outlined, size: 40,)),
      ],
    );
  }
}
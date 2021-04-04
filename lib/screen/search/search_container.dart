import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/screen/search/search_influencer.dart';
import 'package:localhub/screen/search/search_items.dart';
import 'package:localhub/screen/search/search_store.dart';
import 'package:localhub/widgets/custom_input.dart';

class SearchContainer extends StatefulWidget {
  @override
  _SearchContainerState createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  List<Widget> list = [
    Tab(
      text: 'Store',
    ),
    Tab(
      text: 'Items',
    ),
    Tab(
      text: 'Influencers',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(15),
            child: buildAppbarSearchField('Search', null),
          ),
          Container(
            color: Colors.white,
            child: TabBar(
              onTap: (index) {
                // Should not used it as it only called when tab options are clicked,
                // not when user swapped
              },
              controller: _controller,
              tabs: list,
              labelStyle: GoogleFonts.roboto(
                fontSize: 16,
                color: BUTTON_BLACK,
                fontWeight: FontWeight.bold,
              ),
              labelColor: BUTTON_BLACK,
              unselectedLabelStyle: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.grey,
              ),
              indicatorColor: BUTTON_BLACK,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                SearchStore(),
                SearchItem(),
                SearchInfluencer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Models/Item.dart';
import '../../components/app_bar.dart';
import '../../components/bottom_nav.dart';
import '../../constants.dart';
import 'components/categories.dart';
import 'components/filter.dart';
import 'components/item_card.dart';
import 'components/search_bar.dart';

class HomeScreenHR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back.svg'),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        elevation:4,
        centerTitle:false,
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xffc396e5),
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.zero,
        ),
        title:Text(
          "Health Manager",
          style:TextStyle(
            fontWeight:FontWeight.w800,
            fontStyle:FontStyle.normal,
            fontSize:17,
            color:Color(0xffffffff),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find the Best\nHealth for You',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),

              SizedBox(height: kDefaultPadding),

              Text(
                'Popular',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 30),

              StaggeredGridView.countBuilder(
                 padding: EdgeInsets.all(2),
                 crossAxisCount: 2,
                 itemCount: demoItems.length,
                 crossAxisSpacing: 10,
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 mainAxisSpacing: 1,
                 itemBuilder: (context, index) {
                   return ItemCard(item: demoItems[index], index: index);
                 },
                 staggeredTileBuilder: (index) => StaggeredTile.fit(1),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
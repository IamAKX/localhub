import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/model/dummy_user_model.dart';

class ViewRatings extends StatefulWidget {
  @override
  _ViewRatingsState createState() => _ViewRatingsState();
}

class _ViewRatingsState extends State<ViewRatings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Ratings'),
      ),
      body: body(),
    );
  }

  body() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: ListView.builder(
        itemCount: getDummyUserModel().length,
        itemBuilder: (context, index) {
          DummyUser user = getDummyUserModel().elementAt(index);
          return Column(
            children: [
              ListTile(
                leading: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(user.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  user.name,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '2min ago',
                  style: GoogleFonts.openSans(
                    fontSize: 13,
                    color: Colors.grey[500],
                  ),
                ),
                trailing: RatingBar.builder(
                  initialRating: getCategoryStore().elementAt(index).rating,
                  minRating: 1,
                  itemSize: 15,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: getCategoryStore().elementAt(index).rating.toInt(),
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 80),
                child: Text(LOREM_BODY_SHORT + ' ' + LOREM_BODY_SHORT),
              ),
              Divider(
                color: Colors.grey,
                indent: 12,
                endIndent: 12,
              )
            ],
          );
        },
      ),
    );
  }
}

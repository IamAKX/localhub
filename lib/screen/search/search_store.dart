import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/widgets/custom_avatar.dart';

class SearchStore extends StatefulWidget {
  @override
  _SearchStoreState createState() => _SearchStoreState();
}

class _SearchStoreState extends State<SearchStore> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width / 3;
    height = (MediaQuery.of(context).size.height + 20) / 3;
    return GridView.count(
      crossAxisCount: 3,

      // crossAxisSpacing: 5,
      // mainAxisSpacing: 1,
      childAspectRatio: 0.5,
      children: List.generate(
        getCategoryStore().length,
        (index) => Container(
          margin: EdgeInsets.all(3),
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 140,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            getCategoryStore().elementAt(index).image,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    CustomAvatars()
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.1,
                        offset: Offset(0.0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          getCategoryStore().elementAt(index).name.trim(),
                          // maxLines: 2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Spacer(),
                      RatingBar.builder(
                        initialRating:
                            getCategoryStore().elementAt(index).rating,
                        minRating: 1,
                        itemSize: 15,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/storeItem',
                              arguments: getCategoryStore()
                                  .elementAt(index)
                                  .name
                                  .trim());
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          decoration: BoxDecoration(
                            color: BUTTON_BLACK,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            'View Store',
                            style: GoogleFonts.openSans(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

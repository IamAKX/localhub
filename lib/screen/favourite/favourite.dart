import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:localhub/config/colors.dart';
import 'package:localhub/config/static_data.dart';
import 'package:localhub/widgets/custom_avatar.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  var width, height;
  @override
  Widget build(BuildContext context) {
    width = (MediaQuery.of(context).size.width) / 3;
    height = (MediaQuery.of(context).size.height + 30) / 3;
    return GridView.count(
      crossAxisCount: 3,

      // crossAxisSpacing: 5,
      // mainAxisSpacing: 1,
      childAspectRatio: width / height,
      children: List.generate(
        getCategoryStore().length - 3,
        (index) => Container(
          child: Stack(
            children: [
              Positioned(
                top: 15,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        getCategoryStore().elementAt(index).image,
                        height: 150,
                        width: 180,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          getCategoryStore().elementAt(index).name.trim() +
                              '\n',
                          maxLines: 2,
                        ),
                      ),
                      // Container(
                      //   width: width + 20,
                      //   padding: EdgeInsets.only(
                      //     left: 8,
                      //     right: 8,
                      //     bottom: 5,
                      //   ),
                      //   child: RatingBar.builder(
                      //     initialRating:
                      //         getCategoryStore().elementAt(index).rating,
                      //     minRating: 1,
                      //     itemSize: 20,
                      //     direction: Axis.horizontal,
                      //     allowHalfRating: true,
                      //     itemCount: 5,
                      //     itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      //     itemBuilder: (context, _) => Icon(
                      //       Icons.star,
                      //       color: Colors.amber,
                      //     ),
                      //     onRatingUpdate: (rating) {
                      //       print(rating);
                      //     },
                      //   ),
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/storeItem',
                                  arguments: getCategoryStore()
                                      .elementAt(index)
                                      .name
                                      .trim());
                            },
                            color: BUTTON_BLACK,
                            textColor: Colors.white,
                            child: Text('View Store'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomAvatars()
            ],
          ),
        ),
      ),
    );
  }
}

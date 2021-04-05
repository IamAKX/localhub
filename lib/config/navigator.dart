import 'package:flutter/material.dart';
import 'package:localhub/screen/account_type/account_type.dart';
import 'package:localhub/screen/basket/basket.dart';
import 'package:localhub/screen/business/home_container/home_container.dart';
import 'package:localhub/screen/business/settings/business_change_password.dart';
import 'package:localhub/screen/business/settings/business_my_profile.dart';
import 'package:localhub/screen/business/settings/business_settings.dart';
import 'package:localhub/screen/category/category_stores.dart';
import 'package:localhub/screen/category/item_details.dart';
import 'package:localhub/screen/category/store_items.dart';
import 'package:localhub/screen/home_container/home_container.dart';
import 'package:localhub/screen/intro/intro_first.dart';
import 'package:localhub/screen/intro/intro_second.dart';
import 'package:localhub/screen/intro/main_intro.dart';
import 'package:localhub/screen/likes/likes.dart';
import 'package:localhub/screen/onboarding/signin.dart';
import 'package:localhub/screen/onboarding/signup.dart';
import 'package:localhub/screen/profile/change_password.dart';
import 'package:localhub/screen/profile/my_profile.dart';
import 'package:localhub/screen/profile/settings.dart';
import 'package:localhub/screen/ratings/view_ratings.dart';
import 'package:localhub/screen/spinning_wheel/spinning_result.dart';
import 'package:localhub/screen/spinning_wheel/spinning_wheel.dart';
import 'package:localhub/screen/story/story.dart';

class NavRoute {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => IntroFirst());
      case '/secondIntro':
        return MaterialPageRoute(builder: (_) => IntroSecond());
      case '/chooseAccountType':
        return MaterialPageRoute(builder: (_) => AccountType());
      case '/mainIntro':
        return MaterialPageRoute(builder: (_) => MainIntro());
      case '/signIn':
        return MaterialPageRoute(builder: (_) => SignIn());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeContainer());
      case '/categoryStore':
        return MaterialPageRoute(
            builder: (_) => CategoryStore(settings.arguments));
      case '/storeItem':
        return MaterialPageRoute(
            builder: (_) => StoreItems(settings.arguments));
      case '/itemDetails':
        return MaterialPageRoute(
            builder: (_) => ItemDetails(settings.arguments));
      case '/basket':
        return MaterialPageRoute(builder: (_) => Basket());
      case '/story':
        return MaterialPageRoute(builder: (_) => Story());
      case '/likes':
        return MaterialPageRoute(builder: (_) => Likes());
      case '/viewRatings':
        return MaterialPageRoute(builder: (_) => ViewRatings());
      case '/profileSettings':
        return MaterialPageRoute(builder: (_) => ProfileSettings());
      case '/myprofile':
        return MaterialPageRoute(builder: (_) => MyProfile());
      case '/changePassword':
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case '/spinningWheel':
        return MaterialPageRoute(builder: (_) => LuckySpinningWheel());
      case '/spinningWheelResult':
        return MaterialPageRoute(
            builder: (_) => SpinningResult(settings.arguments));
      case '/business/home':
        return MaterialPageRoute(builder: (_) => BusinessHomeContainer());
      case '/business/profileSettings':
        return MaterialPageRoute(builder: (_) => BusinessProfileSettings());
      case '/business/myprofile':
        return MaterialPageRoute(builder: (_) => BusinessMyProfile());
      case '/business/changePassword':
        return MaterialPageRoute(builder: (_) => BusinessChangePassword());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('Oooppss!! Fatal error'),
        ),
      );
    });
  }
}

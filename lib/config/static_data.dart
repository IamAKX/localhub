import 'package:localhub/model/category_model.dart';
import 'package:localhub/model/category_store_model.dart';
import 'package:localhub/model/dummy_user_model.dart';
import 'package:localhub/model/item_model.dart';
import 'package:localhub/model/order_model.dart';

String LOREM_TITLE = 'Lorem ipsum dolor';
String LOREM_BODY =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Auctor elit sed vulputate mi sit amet mauris. Lorem ipsum dolor sit amet consectetur adipiscing. Dui nunc mattis enim ut tellus elementum sagittis. Suspendisse potenti nullam ac tortor vitae purus. At urna condimentum mattis pellentesque id nibh. Erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit. Mattis rhoncus urna neque viverra justo nec. Netus et malesuada fames ac. Amet purus gravida quis blandit turpis cursus in hac habitasse. Odio facilisis mauris sit amet massa. Augue lacus viverra vitae congue eu. Quam adipiscing vitae proin sagittis. Vitae semper quis lectus nulla at volutpat diam ut venenatis. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Elementum eu facilisis sed odio morbi quis.

Pharetra massa massa ultricies mi quis hendrerit dolor magna eget. In nulla posuere sollicitudin aliquam ultrices sagittis orci. Sed faucibus turpis in eu mi. Arcu felis bibendum ut tristique et egestas quis ipsum. Convallis posuere morbi leo urna molestie at. Viverra adipiscing at in tellus integer. Sed augue lacus viverra vitae congue eu consequat ac felis. Semper quis lectus nulla at volutpat diam ut venenatis tellus. Euismod in pellentesque massa placerat. Ullamcorper malesuada proin libero nunc consequat interdum varius sit. Elit at imperdiet dui accumsan sit. Velit egestas dui id ornare. Tellus mauris a diam maecenas sed enim ut sem viverra. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Leo urna molestie at elementum eu facilisis sed odio morbi. Risus at ultrices mi tempus imperdiet nulla. Tempus urna et pharetra pharetra massa massa ultricies. Ultricies tristique nulla aliquet enim tortor at auctor. Sed risus pretium quam vulputate dignissim suspendisse in est.

Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Est ultricies integer quis auctor elit sed vulputate mi sit. Eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Elit scelerisque mauris pellentesque pulvinar pellentesque. Convallis a cras semper auctor neque vitae tempus. Facilisi etiam dignissim diam quis enim lobortis. Quam lacus suspendisse faucibus interdum posuere lorem. Pharetra massa massa ultricies mi quis hendrerit dolor magna eget. Venenatis tellus in metus vulputate. Lorem ipsum dolor sit amet consectetur adipiscing elit duis. Vestibulum rhoncus est pellentesque elit.

Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Magna fringilla urna porttitor rhoncus dolor purus. Ullamcorper eget nulla facilisi etiam dignissim diam. Ut diam quam nulla porttitor massa id. Etiam sit amet nisl purus in mollis nunc sed id. Eget nullam non nisi est sit amet. Ac turpis egestas maecenas pharetra convallis posuere. Aliquet nibh praesent tristique magna sit amet purus. Accumsan lacus vel facilisis volutpat est velit. Nisi porta lorem mollis aliquam ut porttitor leo. Vehicula ipsum a arcu cursus. Vestibulum mattis ullamcorper velit sed ullamcorper. Posuere sollicitudin aliquam ultrices sagittis orci. Gravida dictum fusce ut placerat orci. Egestas congue quisque egestas diam in arcu. Aliquam vestibulum morbi blandit cursus risus. Pulvinar pellentesque habitant morbi tristique senectus et netus et. Ac ut consequat semper viverra. Tincidunt arcu non sodales neque sodales ut etiam.

Risus ultricies tristique nulla aliquet enim tortor. Purus non enim praesent elementum facilisis leo. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Purus in mollis nunc sed id semper. Varius vel pharetra vel turpis. Arcu vitae elementum curabitur vitae. Viverra adipiscing at in tellus integer. Commodo elit at imperdiet dui. Neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing. In ante metus dictum at. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc.''';
String LOREM_BODY_SHORT =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt''';

List<String> getItemCategory() {
  return ['Sweet', 'Food', 'Bag'];
}

List<CategoryModel> getCategoryList() {
  return [
    CategoryModel(
        name: 'Desserts', image: 'assets/images/category/dessert.png'),
    CategoryModel(name: 'Dresses', image: 'assets/images/category/dresses.png'),
    CategoryModel(name: 'Food', image: 'assets/images/category/food.png'),
    CategoryModel(name: 'Abaya', image: 'assets/images/category/abaya.png'),
    CategoryModel(
        name: 'Accessories', image: 'assets/images/category/accessories.png'),
    CategoryModel(
        name: 'Mkhsweer', image: 'assets/images/category/mkhaweer.png'),
    CategoryModel(name: 'Clothes', image: 'assets/images/category/clothes.png'),
    CategoryModel(
        name: 'Houseware', image: 'assets/images/category/houseware.png'),
    CategoryModel(
        name: 'Fragrances', image: 'assets/images/category/fragnances.png'),
    CategoryModel(
        name: 'Jewelry', image: 'assets/images/category/jewllery.png'),
    CategoryModel(name: 'Arts', image: 'assets/images/category/arts.png'),
    CategoryModel(name: 'Flowers', image: 'assets/images/category/flowers.png'),
  ];
}

List<CategoryStoreModel> getCategoryStore() {
  return [
    CategoryStoreModel(
        name: 'Amorino - Abu Dhabi Mall',
        rating: 4.5,
        image: 'assets/images/shop/shop1.png'),
    CategoryStoreModel(
        name: 'Cold Stone Creamery',
        rating: 3.5,
        image: 'assets/images/shop/shop2.png'),
    CategoryStoreModel(
        name: 'Keki Japanese Bakery',
        rating: 4.0,
        image: 'assets/images/shop/shop3.png'),
    CategoryStoreModel(
        name: 'Al Dar Sweets',
        rating: 2.75,
        image: 'assets/images/shop/shop4.png'),
    CategoryStoreModel(
        name: 'La Torta Cakes & Sweets',
        rating: 4.25,
        image: 'assets/images/shop/shop5.png'),
    CategoryStoreModel(
        name: 'Haagen Dazs Al Wahda Mall',
        rating: 5,
        image: 'assets/images/shop/shop6.png'),
  ];
}

List<ItemModel> getItemModel() {
  return [
    ItemModel(
        name: 'Osmalia with Creame',
        amount: '50.0 AED',
        image: 'assets/images/item_images/item1.png',
        quantity: '1 Kg'),
    ItemModel(
        name: 'Nammoura with Cream',
        amount: '50.0 AED',
        image: 'assets/images/item_images/item2.png',
        quantity: '1 Kg'),
    ItemModel(
        name: 'Cashew Fingers',
        amount: '50.0 AED',
        image: 'assets/images/item_images/item3.png',
        quantity: '1 Kg'),
    ItemModel(
        name: 'Cashew Fingers',
        amount: '50.0 AED',
        image: 'assets/images/item_images/item4.png',
        quantity: '1 Kg'),
  ];
}

List<DummyUser> getDummyUserModel() {
  return [
    DummyUser(name: 'Jakob Herwitz', image: 'assets/images/user_dummy_1.png'),
    DummyUser(name: 'Nolan Franci', image: 'assets/images/user_dummy_2.png'),
    DummyUser(name: 'Carter Calzoni', image: 'assets/images/user_dummy_3.png'),
    DummyUser(name: 'Tiana Stanton', image: 'assets/images/user_dummy_4.png'),
    DummyUser(name: 'Angel Vetrovs', image: 'assets/images/user_dummy_5.png'),
    DummyUser(name: 'Hanna Septimus', image: 'assets/images/user_dummy_6.png'),
  ];
}

List<OrderModel> getOrderList() {
  return [
    OrderModel(
        orderNumber: '123',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Pritesh Sudra',
        isAccepted: 'N',
        totalAmount: '100.00',
        totalQuantity: '2',
        status: 'Not Accepted'),
    OrderModel(
        orderNumber: '314',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Gretchen Aminoff',
        isAccepted: 'Y',
        totalAmount: '130.00',
        totalQuantity: '130',
        status: 'Not Accepted'),
    OrderModel(
        orderNumber: '751',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Leo Passaquindici Arcand',
        isAccepted: 'Y',
        totalAmount: '313.00',
        totalQuantity: '431',
        status: 'Pending'),
    OrderModel(
        orderNumber: '987',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Lydia Herwitz',
        isAccepted: 'Y',
        totalAmount: '121.00',
        totalQuantity: '987',
        status: 'Processing'),
    OrderModel(
        orderNumber: '542',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Jaxson Siphron',
        isAccepted: 'Y',
        totalAmount: '89.00',
        totalQuantity: '231',
        status: 'Ontheway'),
    OrderModel(
        orderNumber: '752',
        orderTimestamp: '1/3/2021 4:20 PM',
        customerName: 'Jaxson Siphron',
        isAccepted: 'Y',
        totalAmount: '631.00',
        totalQuantity: '542',
        status: 'Delivered'),
  ];
}

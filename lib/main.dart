import 'package:flutter/material.dart';
import 'package:online_shop/screens/products.dart';
import 'package:online_shop/screens/userProfile.dart';
import 'package:online_shop/screens/home.dart';
import 'package:online_shop/screens/productsCart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageNavigationBar(),
    );
  }
}

class PageNavigationBar extends StatefulWidget {
  final List<Page> _pages = [
    Page('Catalog', Icons.list_alt, ProductsScreen()),
    Page('Profile', Icons.account_box, ProfileScreen()),
    Page('Cart', Icons.shopping_cart, ProductsCart()),
  ];


  PageNavigationBar({Key key}) : super(key: key);

  @override
  _PageNavigationBarState createState() => _PageNavigationBarState();
}

class _PageNavigationBarState extends State<PageNavigationBar> {
  int _currentPageIndex = 0;

  void _openPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerItemWidgets = widget._pages
        .asMap()
        .map((int index, Page page) =>
        MapEntry<int, Widget>(index,
            ListTile(
              title: Text(page.title),
              leading: Icon(page.iconData),
              selected: _currentPageIndex == index,
              onTap: () {
                _openPage(index);
                Navigator.pop(context);
              },
            )
        )
    ).values.toList();
    drawerItemWidgets.insert(0, DrawerHeader(
      child: Text('Drawer Header'),
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    ),);
    return Scaffold(
      appBar: AppBar(
        title: Text("ProCourses"),     
        //title: Image.asset("assets/img/logoProCourses.PNG"),
      ),
      //body: ProductsScreen(),
      body: Center(
        child: (widget._pages[_currentPageIndex].pageBody),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: drawerItemWidgets,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        items: widget._pages.map((Page page) =>
            BottomNavigationBarItem(
              icon: Icon(page.iconData),
              title: Text(page.title),
            )).toList(),
        onTap: _openPage,
      ),);
  }
}

class Page {
  final String title;
  final IconData iconData;
  final Widget pageBody;
  Page(this.title, this.iconData, this.pageBody);
}


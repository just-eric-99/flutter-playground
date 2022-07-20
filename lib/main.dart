import 'package:flutter/material.dart';
import 'package:flutter_playground/utils/const.dart';
import 'package:flutter_playground/widgets/item_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //   bottomAppBarColor: Colors.cyanAccent,
        //   brightness: Brightness.dark,
        //   primaryColor: Colors.lightBlue,
        //   iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = [
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    ListView(
      padding: EdgeInsets.all(5.0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
              Center(
                  child: ItemCard(
                img: "https://images.freeimages.com/images/large-previews/745/happy-friends-1057580.jpg",
                title: "Title",
                schedule: "Sat 13/08/2022",
                price: "\$200",
              )),
            ],
          ),
        ),
      ],
    ),
    const Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Tickets',
      style: optionStyle,
    ),
    const Text(
      'Index 3: Favorites',
      style: optionStyle,
    ),
    const Text(
      'Index 4: Personalize',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          Constants.appName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        enableFeedback: false,
        onTap: _onItemTapped,
      ),
    );
  }
}

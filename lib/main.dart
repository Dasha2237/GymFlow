import 'package:app_sport/HomePage.dart';
import 'package:app_sport/Profile.dart';
import 'package:app_sport/Workout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Demo'),
      routes: {
        '/page1': (context) => Button1Page(),
        '/page2': (context) => Button2Page(),
        '/page3': (context) => Button3Page(),
        '/page4': (context) => Button4Page(),
        '/page5': (context) => Button5Page(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;


  final List<Widget> _pages = [
    Button1Page(),
    Button2Page(),
    Button3Page(),
    Button4Page(),
    Button5Page(),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        //title: Text(widget.title),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.network(
                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fns82maDPujTwEb3FbMMb%2Fcf341eb51cc593db7bd9035d2d3714ca.png',
                //width: 38,
                //height: 38,
                //fit: BoxFit.contain,
              ),
              onPressed: () {
                // Переход на страницу "HomeScreen" через маршрут
                //Navigator.pushNamed(context, '/page1');
                _changePage(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Переход на страницу "SearchScreen" через маршрут
                _changePage(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Переход на страницу "SearchScreen" через маршрут
                _changePage(2);              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Переход на страницу "SearchScreen" через маршрут
                _changePage(3);              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Переход на страницу "SearchScreen" через маршрут
                _changePage(4);              },
            ),
            // Добавьте другие IconButton'ы по мере необходимости
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        Profile(),
        Workout(),
        HomePage(),
        Button1Page(),
        Button2Page(),
        // Добавьте другие страницы по мере необходимости
      ],
    );
  }

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}



class Button1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Button 1 Page'),
    );
  }
}

class Button2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Button 2 Page'),
    );
  }
}

class Button3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Button 3 Page'),
    );
  }
}

class Button4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Button 4 Page'),
    );
  }
}

class Button5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Button 5 Page'),
    );
  }
}


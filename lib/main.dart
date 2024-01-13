import 'Profile.dart';
import 'Workout.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'HomePage.dart';
import 'dto/database_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Start with the RegistrationPage
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                _changePage(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _changePage(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.sports_gymnastics),
              onPressed: () {
                _changePage(2);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        Profile(),
        HomePage(),
        Workout(),
      ],
    );
  }

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// Your other page classes remain the same...

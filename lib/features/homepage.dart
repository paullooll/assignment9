import 'package:assignment9/tabs/favorite_tab.dart';
import 'package:assignment9/tabs/front_tab.dart';
import 'package:flutter/material.dart';

  class HomePage extends StatefulWidget {
    const HomePage({super.key});

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return const DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.favorite), text: "Favorites"),
            ],
          ),
          body: TabBarView(
            children: [
              MyHomePage(),
              artisters()
            ],
          ),
        ),
      );
    }
  }

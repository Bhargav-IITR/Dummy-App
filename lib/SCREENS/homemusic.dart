import 'package:dummy_project/SCREENS/player.dart';
import 'package:flutter/material.dart';

import '../Model/category.dart';
import '../services/category-operations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get centerTitle => null;

  Widget createCategory(category song) {
    return InkWell(
      child: Container(
        color: const Color.fromARGB(255, 158, 73, 173),
        child: Row(
          children: [
            Image.network(song.imageURL, fit: BoxFit.cover),
            Column(
              children: [
                Text(
                  song.name,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                Text(
                  song.artist,
                  style: const TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const player()),
          ),
        );
      },
    );
  }

  List<Widget> createListOfCategories() {
    List<category> categoryList = CategoryOperations.getCategories();
    List<Widget> categories =
        categoryList.map((song) => createCategory(song)).toList();
    return categories;
  }

  Widget createGrid() {
    return SizedBox(
      height: 700,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        mainAxisSpacing: 15,
        children: createListOfCategories(),
        crossAxisCount: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    color:
    const Color.fromARGB(66, 21, 1, 24);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'LISTEN TO YOUR FAVOURITE SONGS',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: createGrid());
  }
}

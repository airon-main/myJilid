import 'package:flutter/material.dart';
import 'package:my_flutter/colorpallette.dart';
import 'package:flutter_svg/flutter_svg.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "myJilid",
          style: TextStyle(fontFamily: 'Pacifico', fontSize: 22),
        ),
        backgroundColor: colorNormal[0],
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            color: Colors.black,
            tooltip: 'Open Settings',
            onPressed: () {
              _key.currentState!.openDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: colorNormal[0],
              ),
              child: const Text('Header'),
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          TopNav(),
          JilidCard(),
          JilidCard(),
        ],
      ),
    );
  }
}

class TopNav extends StatelessWidget {
  const TopNav({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorNormal[0],
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Search(),
          SizedBox(
            height: 15,
          ),
          ContinueReading(),
        ],
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 19.0,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: colorLight[0],
        hintText: 'Cari',
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        suffixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: SvgPicture.asset("assets/images/search.svg",
              semanticsLabel: "Search"),
        ),
      ),
    );
  }
}

class ContinueReading extends StatelessWidget {
  const ContinueReading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: colorDark[1],
          width: 65,
          height: 100,
          child: SvgPicture.asset("assets/images/solar_bookmark-outline.svg",
              semanticsLabel: "BookMark", fit: BoxFit.scaleDown),
        ),
        Expanded(
          child: Container(
            height: 100,
            alignment: Alignment.centerLeft,
            color: colorDark[0],
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Lanjutkan Membaca',
                  style: TextStyle(color: colorLight[0]),
                ),
                const Text(
                  'Jilid 2',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                const Text(
                  'Halaman 14',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class JilidCard extends StatelessWidget {
  const JilidCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Jilid 1", style: TextStyle(fontSize: 17)),
                Text("47 Halaman", style: TextStyle(color: colorDark[0])),
              ],
            ),
          ),
          Icon(
            Icons.more_horiz,
            color: colorDark[3],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetMenu(),
    );
  }
}

class WidgetMenu extends StatefulWidget {
  const WidgetMenu({super.key});

  @override
  State<WidgetMenu> createState() => _WidgetMenuState();
}

class _WidgetMenuState extends State<WidgetMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'About Motion',
                ),
                Tab(
                  text: 'About You',
                ),
              ],
              indicatorPadding: EdgeInsets.all(10),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            AboutMotion(),
            AboutMe(),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/me.jpg',
                  width: 100,
                ),
                const SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text("Nama: Wendy Noer Isnaeni"),
                    Text("Jurusan: S1 Informatika"),
                    Text("Kelas: IF 46 10"),
                    Text("Angkatan: 2022"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2)),
              height: 100,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text("Saya adalah seorang mahasiswi jurusan S1 Informatika.")
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2)),
              height: 100,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                      "Saya sudah pernah belajar beberapa bahasa pemograman seperti html,css,js,php,go dan saat ini saya sedang belajar flutter."),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 2)),
              height: 100,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                      "Pandangan saya terhadap motion adalah sebuah lab yang sangat menarik dimana disana saya bisa belajar bahasa pemograman yang saya minati yaitu flutter dan saya dapat kenal banyak orang."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutMotion extends StatelessWidget {
  const AboutMotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/motion.jpg',
                width: 300,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Apa itu MotionLab?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Mobile Innovation Laboratory atau biasa dikenal dengan Motion Laboratory merupakan salah satu laboratorium penelitian yang berada di bawah Fakultas Informatika Universitas Telkom. Motion Laboratory berfokus pada pemecahan masalah sosial melalui pemanfaatan teknologi seluler.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siatkowka/widget/navigator_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigatorDrawerWidget(),
      appBar: AppBar(
        title: const Text('Wszystko o Siatkówce'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage('images/pobrane.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Piłka siatkowa, siatkówka – sport drużynowy, w którym biorą udział dwa zespoły po 7 zawodników w każdym (rozgrywający, atakujący, dwóch środkowych i dwóch przyjmujących, libero). Na boisku przebywa jednak tylko sześciu zawodników, libero zmienia się ze środkowym będącym w linii obrony, gdy drużyna przyjmuje zagrywkę. W tej aplikacji przybliżę każdemu informacje o drużynach oraz zawodnikach z całego świata.',
                style: GoogleFonts.lato(fontSize: 20),
              ),
              ElevatedButton(
                child: const Text('Dalej'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wszystko o Siatkówce'),
      ),
      backgroundColor: const Color(0xFF01579B),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          CategoryWidget('Skra Bełchatów'),
          CategoryWidget('Verva Warszawa'),
          CategoryWidget('Asseco Resovia Rzeszów'),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.yellow,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      child: Text(title),
    );
  }
}

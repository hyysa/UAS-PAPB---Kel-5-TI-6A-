import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:uas_papb_kel5/home.dart';
import 'constants.dart';
import 'cartpage.dart';
import 'menupage.dart';

// Widget utama yang menampilkan daftar makanan dalam bentuk horizontal ListView
class FoodListview extends StatelessWidget {
  const FoodListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Menambahkan padding di sekitar Container
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // Menetapkan tinggi Container
        height: 180.0,
        child: ListView(
          // Mengatur arah scroll menjadi horizontal
          scrollDirection: Axis.horizontal,
          // Daftar item yang ditampilkan, diwakili oleh ItemCard
          children: const <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan card item pada header
class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Menambahkan padding di sekitar Container
      padding: const EdgeInsets.all(2.0),
      child: Container(
        // Menetapkan ukuran card item
        height: 150.0,
        width: 300.0,
        // Mengatur dekorasi dengan gambar latar belakang
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(pecelheader), fit: BoxFit.cover)),
        // Menumpuk widget di atas satu sama lain
        child: Stack(
          children: <Widget>[
            // Container untuk efek gradien gelap
            Container(
              height: 160.0,
              width: 300.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.1), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            // Padding di sekitar teks
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // Mengatur penempatan teks di kiri bawah
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Menambahkan spasi agar teks berada di bawah
                  const Spacer(),
                  // Teks untuk promo
                  Text(
                    'Promo 20%',
                    style: TextStyle(
                        color: textYellow,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        letterSpacing: 1.1),
                  ),
                  // Teks tambahan untuk promo
                  const Text(
                    'Untuk 10 Pembeli Pertama',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan menu bar dengan berbagai jenis menu
class SelectTypeSection extends StatelessWidget {
  const SelectTypeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Menambahkan padding horizontal
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        // Menetapkan tinggi menu bar
        height: 92.0,
        child: ListView(
          // Mengatur arah scroll menjadi horizontal
          scrollDirection: Axis.horizontal,
          // Menghapus padding default ListView
          padding: EdgeInsets.zero,
          // Daftar jenis menu yang ditampilkan
          children: <Widget>[
            // Container untuk Menu Spesial
            Container(
              width: 200.0,
              color: Colors.lightGreen[700],
              child: Column(
                // Menempatkan ikon dan teks di tengah secara vertikal
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Ikon untuk Menu Spesial
                  Icon(
                    FontAwesomeIcons.bowlRice,
                    color: Colors.green[300],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  // Teks untuk Menu Spesial
                  const Text(
                    'Menu Spesial',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Container untuk Menu Terlaris
            Container(
              width: 200.0,
              color: Colors.red[600],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Ikon untuk Menu Terlaris
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Colors.red[400],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  // Teks untuk Menu Terlaris
                  const Text(
                    'Menu Terlaris',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Container untuk Minuman
            Container(
              width: 200.0,
              color: Colors.blue[700],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Ikon untuk Minuman
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: Colors.blue[200],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  // Teks untuk Minuman
                  const Text(
                    'Minuman',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk menampilkan daftar item menu dalam bentuk vertikal
class MenuItemsList extends StatelessWidget {
  const MenuItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      // Menambahkan padding horizontal
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        // Menempatkan item ke kiri
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Judul untuk menu pilihan
          Text(
            'Menu Pilihan',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          // Daftar item menu yang ditampilkan
          ContentItem(),
          ContentItem(),
          ContentItem(),
          ContentItem(),
          ContentItem(),
          ContentItem(),
        ],
      ),
    );
  }
}

// Widget untuk menampilkan detail setiap item menu
class ContentItem extends StatelessWidget {
  const ContentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Menambahkan padding di bawah setiap item
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        // Menempatkan gambar dan detail menu secara horizontal
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Container untuk menampilkan gambar item menu
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              pecelmenu,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                // Menempatkan detail menu ke kiri
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Container untuk menampilkan rating dengan ikon bintang
                  Container(
                    decoration: BoxDecoration(
                        color: iconYellow,
                        borderRadius: BorderRadius.circular(4.0)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Row(
                        children: <Widget>[
                          // Ikon bintang untuk rating
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          // Teks rating
                          Text('4.5')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  // Teks untuk nama item menu
                  const Text(
                    'Pecel Sambel Tumpang',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  // Container untuk deskripsi singkat item menu
                  Container(
                    width: 200.0,
                    child: const Text(
                      'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Menubar bawah / navigasis
class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text('Beranda', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
              ),
              Container(
                width: 100.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.black45,
                    ),
                    Text('Keranjang', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Polygon button
class PolygonButton extends StatelessWidget {
  const PolygonButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()),
        );
      },
      child: Container(
        height: 100.0,
        width: 100.0,
        child: FlutterClipPolygon(
          sides: 6,
          child: Container(
            color: Colors.yellow[500],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FontAwesomeIcons.book),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Menu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

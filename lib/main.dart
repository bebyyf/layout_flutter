import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi pembantu untuk membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Bagian judul (title section)
    Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const SizedBox(width: 4),
          const Text('41'),
        ],
      ),
    );

    // Bagian tombol (button section)
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    // Bagian teks (text section)
    Widget textSection = Container(
      padding: const EdgeInsets.all(24),
      child: const Text(
        'Gunung Batu merupakan salah satu destinasi wisata alam populer di Kota Batu, '
        'Malang. Dari puncaknya, pengunjung dapat menikmati panorama menakjubkan '
        'Kota Batu, Gunung Panderman, dan Gunung Arjuno. Jalur pendakiannya '
        'tergolong mudah sehingga cocok untuk pendaki pemula yang ingin menikmati '
        'keindahan alam dan udara segar khas pegunungan.\n\n'
        'Dibalik keindahannya, Gunung Batu juga menjadi tempat favorit bagi para '
        'fotografer dan wisatawan untuk menikmati sunrise dan sunset.\n\n'
        'Dibuat oleh:\n'
        'My Babby Findia R.S. - 2341760007',
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(height: 1.5, fontSize: 14),
      ),
    );

    // Bangun tampilan utama aplikasi
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout: My Babby Findia R.S. - 2341760007',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/gunung_batu.png',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

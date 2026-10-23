
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GaleriFoto(),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Gambar foto
            Image.network(
              'https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            // Judul foto
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Jalan di Barcelona',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Divider(),

            // Informasi lokasi
            const ListTile(
              leading: Icon(
                Icons.place,
                color: Colors.red,
              ),
              title: Text(
                'Lokasi: Barcelona, Spanyol',
                style: TextStyle(fontSize: 14),
              ),
            ),

            // Informasi tanggal publikasi
            const ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: Colors.blue,
              ),
              title: Text(
                'Publikasi: 13 Agustus 2013',
                style: TextStyle(fontSize: 14),
              ),
            ),

            const Divider(),

            // Judul deskripsi
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Isi deskripsi
            const Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 20,
              ),
              child: Text(
                'Sebuah persimpangan jalan di Barcelona, Spanyol. '
                'Foto ini menampilkan berbagai kendaraan yang '
                'bergerak dalam arah yang berbeda, menciptakan '
                'pemandangan yang sibuk dan energik.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

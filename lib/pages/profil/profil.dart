import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:aplikasi_bootcamp/pages/home/beranda.dart';
import 'package:aplikasi_bootcamp/pages/diskusi/chat.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _selectedIndex =
      2; // Inisialisasi indeks yang sesuai dengan halaman profil

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100), // Sesuaikan dengan tinggi yang Anda inginkan
          child: AppBar(
            backgroundColor: Colors.blue[400],
            title: Padding(
              padding:
                  const EdgeInsets.only(top: 8), // Padding hanya pada judul
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Hi Bagas Djunaedi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Tambahkan tindakan yang diinginkan saat tombol "Edit" ditekan
                        },
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Bagas Djunaedi",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Selamat Pagi >.<",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        foregroundImage: AssetImage("assets/images/ppaku.jpg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            automaticallyImplyLeading: false,
          ),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('INI PROFIL'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.grey,
              activeColor: Colors.blue[300],
              tabBackgroundColor: Colors.purple.shade50,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              selectedIndex: _selectedIndex, // Atur indeks terpilih
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.chat,
                  text: 'Diskusi',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profil',
                ),
              ],
              onTabChange: (int index) {
                setState(() {
                  _selectedIndex = index; // Perbarui indeks saat tab berubah
                });

                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Beranda(),
                      ),
                    );
                    break;

                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Chat(),
                      ),
                    );
                    break;

                  case 2:
                    // Jangan lakukan apa-apa karena kita sudah berada di halaman profil
                    break;
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

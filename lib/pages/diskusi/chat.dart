import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:aplikasi_bootcamp/pages/profil/profil.dart';
import 'package:aplikasi_bootcamp/pages/home/beranda.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _selectedIndex = 1; // Inisialisasi indeks yang sesuai dengan halaman Chat

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Ruang Diskusi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 45),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/nochat.png',
                      height: 200,
                    ),
                  ),
                  const Text("Belum Ada Diskusi", style: TextStyle(color: Colors.purple),)
                ],
              ),


              Padding(
                padding: const EdgeInsets.only(top: 272),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/add.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Ketuk untuk menulis...',
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/camera.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                            'assets/images/kirim.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
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
                    // Jangan lakukan apa-apa karena kita sudah berada di halaman Chat
                    break;

                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profil(),
                      ),
                    );
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

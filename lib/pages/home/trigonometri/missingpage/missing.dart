import 'package:flutter/material.dart';

class Missing extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Missing({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue, // Warna latar belakang app bar
          title: const Text(
            "Matematika",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white, // Warna panah back
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
           const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Pilih Paket Soal",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           
           const SizedBox(height: 80),

           Center(
            child: Align(
              child: Image.asset(
                'assets/images/find.png',
                width: 300,
                height: 280,
              ),
            ),
           ),

           const SizedBox(height: 25),

           const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Yah, Paket tidak tersedia",
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Tenang masih banyak yang bisa kamu pelajari. Belajar lagi yuk",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ),
            ],
           )
          ],
        ),
      ),
    );
  }
}

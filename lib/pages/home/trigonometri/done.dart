import 'package:flutter/material.dart';
import 'package:aplikasi_bootcamp/pages/home/task.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  // ignore: avoid_unnecessary_containers
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const Task(),),
                      );
                    },
                    // ignore: avoid_unnecessary_containers
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/dlt.png', width: 20, height: 20, color: Colors.white),
                          const SizedBox(width: 12),
                          const Text(
                            "Tutup", 
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              
              const SizedBox(height: 80),

               const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Selamat!!",
                  style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Selamat Kamu Telah Menyelesaikan Quiz Ini",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 13, 
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height:35),

              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/win.png',
                  width: 200,
                  height: 200,
                ),
              ),

              const SizedBox(height: 30),

             const Align(
              alignment: Alignment.center,
                child: Text(
                  'Nilai kamu adalah :',
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

             const Align(
              alignment: Alignment.center,
                child: Text(
                  '100',
                  style: TextStyle(
                    fontSize: 65, 
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
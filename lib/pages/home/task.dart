import 'package:flutter/material.dart';
import 'package:aplikasi_bootcamp/pages/home/trigonometri/soal1.dart';
import 'package:aplikasi_bootcamp/pages/home/trigonometri/missingpage/missing.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: const Text(
          "Matematika",
          style: TextStyle(
            fontSize: 15, 
            fontWeight: FontWeight.bold, 
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 5),
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

            const SizedBox(height: 24),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => const Soalone())
                          );
                  },
                  child: Container(
                    width: 150,
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            // ignore: sort_child_properties_last
                            child: Image.asset(
                              'assets/images/math.png',
                              width: 15,
                              height: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          const SizedBox(height: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Trigonometri",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "0/5 Soal",
                                style: TextStyle(
                                  fontSize: 8, 
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Missing())
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            // ignore: sort_child_properties_last
                              child: Image.asset(
                                'assets/images/math.png',
                                width: 15,
                                height: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(15)
                              ),
                          ),
                          const SizedBox(height: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Aljabar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, 
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "0/5 Soal",
                                style: TextStyle(
                                  fontSize: 8, 
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            
            GestureDetector(
              onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Missing())
                    );
              },
              child: Container(
                width: 150,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        // ignore: sort_child_properties_last
                              child: Image.asset(
                                'assets/images/math.png',
                                width: 15,
                                height: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue[100],
                                borderRadius: BorderRadius.circular(15)
                              ),
                      ),
                      const SizedBox(height: 12),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Matrix",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "0/5 Soal",
                            style: TextStyle(
                              fontSize: 8, 
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

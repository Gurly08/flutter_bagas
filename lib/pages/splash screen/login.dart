import 'package:aplikasi_bootcamp/pages/home/beranda.dart';
import 'package:aplikasi_bootcamp/pages/home/sign.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            
           const SizedBox(
              height: 45,
            ),

           const Padding(
             padding: EdgeInsets.only(left: 24),
             child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Login",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
           ),

           const SizedBox(
              height: 70,
            ),

            Center(
              child: Image.asset("assets/images/siswa.png", width: 400, height: 200),
            ),

           const SizedBox(
              height: 35,
            ),

           const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Selamat datang di Aplikasi Widya Edu. Aplikasi Latihan soal dan Konsultasi Soal",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),

           const SizedBox(
              height: 60,
            ),
            
              
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
              
                        ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => Beranda(),)
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.blue, width: 1), 
                        ),
                        minimumSize: const Size(120, 45),
                      ),
                        child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png", width: 30, height: 30),
                         const SizedBox(width: 10), 
                         const Text("Login Dengan Google",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
                        ],
                      ),
                    ),
              
                   const SizedBox(height: 12),
              
                        ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => Beranda(),)
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 48, 46, 46),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.blue, width: 1), 
                        ),
                        minimumSize: const Size(50, 45)
                      ),
                         child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/apple2.png", width: 25, height: 25, color: const Color.fromARGB(255, 255, 255, 255)),
                         const SizedBox(width: 10), 
                         const Text("Login Dengan Google",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sudah Memiliki Akun?", style: TextStyle(fontSize: 14),),
                        TextButton(onPressed: () {
                          Navigator.push(context, 
                         MaterialPageRoute(builder: (context) => const Sign(),)
                        );
                        }, 
                        child:Text("Daftar", style: TextStyle(fontSize: 12,color: Colors.blue[200], decoration: TextDecoration.underline),),
                        ),
                      ],
                    )
                  ],
                ),
              )
             

          ],
        ),
      ),
    );
  }
}

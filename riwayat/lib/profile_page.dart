import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFF213F84),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background full warna sama
            Container(
              height: 400,
              color: Color(0xFF213F84),
              child: Stack(
                children: [
                  // Dekorasi lingkaran kecil tambahan di bagian atas
                  Positioned(
                    top: 20,
                    left: 50,
                    child: circleDecoration(30, 0.4),
                  ),
                  Positioned(
                    top: 70,
                    left: 20,
                    child: circleDecoration(20, 0.6),
                  ),
                  Positioned(
                    top: 100,
                    left: 90,
                    child: circleDecoration(15, 0.8),
                  ),
                  // Dekorasi lingkaran yang udah ada sebelumnya
                  Positioned(
                    top: 50,
                    left: 30,
                    child: circleDecoration(80, 0.5),
                  ),
                  Positioned(
                    top: 20,
                    right: 50,
                    child: circleDecoration(100, 0.7),
                  ),
                  Positioned(
                    top: 120,
                    right: 10,
                    child: circleDecoration(60, 1.0),
                  ),
                  Positioned(
                    top: 150,
                    left: 20,
                    child: circleDecoration(40, 0.8),
                  ),
                ],
              ),
            ),
            // Kotakan melengkung yang ngebungkus semua widget
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none, // biar foto profil bisa keluar dari kotak
                    children: [
                      // Kotakan melengkung
                      Container(
                        padding: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFEDEDED),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Aqua Bliss Pool',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 30),
                            // Penjualan dan Pengeluaran
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.arrow_downward, color: Colors.green, size: 30),
                                        SizedBox(height: 5),
                                        Text(
                                          'Penjualan',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold, // Bikin bold
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Rp 4.000.000',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold, // Bikin bold
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.arrow_upward, color: Colors.red, size: 30),
                                        SizedBox(height: 5),
                                        Text(
                                          'Pengeluaran',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold, // Bikin bold
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'Rp 1.500.000',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold, // Bikin bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            // List Menu
                            menuItem('Grafik Penjualan', Icons.arrow_forward),
                            menuItem('Pengaturan Profil Toko', Icons.arrow_forward),
                            menuItem('Ganti Password', Icons.arrow_forward),
                            menuItem('Notifikasi', Icons.arrow_forward),
                            menuItem('Hapus Akun', Icons.arrow_forward, Colors.red),
                          ],
                        ),
                      ),
                      // Setengah lingkaran di atas kotakan
                      Positioned(
                        top: -58, // Posisi setengah lingkaran
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Container(
                            width: 125,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFFEDEDED),
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(100),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Foto Profil di atas setengah lingkaran
                      Positioned(
                        top: -50, // Naikin foto profil biar di atas setengah lingkaran
                        left: 0,
                        right: 0,
                        child: Center(
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage: AssetImage('assets/amaba_tokamu.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget lingkaran untuk dekorasi background
  Widget circleDecoration(double size, double opacity) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Color(0xFFADD8E7).withOpacity(opacity),
        shape: BoxShape.circle,
      ),
    );
  }

  // Widget untuk menu item
  Widget menuItem(String title, IconData icon, [Color? textColor]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? Colors.black,
                fontWeight: FontWeight.bold, // Bikin bold di list menu
              ),
            ),
            Icon(icon, color: textColor ?? Colors.black),
          ],
        ),
      ),
    );
  }
}

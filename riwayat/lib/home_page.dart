import 'package:flutter/material.dart';
import 'profile_page.dart';  // Import halaman profil
import 'sales_history_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SalesHistoryPage()), // Navigasi ke Riwayat
                );
              },
              child: Text('Riwayat Penjualan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),  // Navigasi ke Profil
                );
              },
              child: Text('Profil Toko'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SalesHistoryPage extends StatefulWidget {
  @override
  _SalesHistoryPageState createState() => _SalesHistoryPageState();
}

class _SalesHistoryPageState extends State<SalesHistoryPage> {
  final List<Map<String, dynamic>> _salesData = [
    {
      'customer': 'Customer 10',
      'time': '21/09/2024 - 10:23 AM',
      'paymentSource': 'Ambatron',
      'paymentMethod': 'QRIS',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 2, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 20000,
      'total': 135000
    },
    {
      'customer': 'Customer 9',
      'time': '21/09/2024 - 10:20 AM',
      'paymentSource': 'Bagas Kopling',
      'paymentMethod': 'Debit',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 2, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
      ],
      'memberDiscount': 10000,
      'total': 125000
    },
    {
      'customer': 'Customer 8',
      'time': '21/09/2024 - 10:16 AM',
      'paymentSource': 'Mas Rusdi',
      'paymentMethod': 'QRIS',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 1, 'price': 50000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 5000,
      'total': 65000
    },
    {
      'customer': 'Customer 7',
      'time': '21/09/2024 - 10:12 AM',
      'paymentSource': 'Raol',
      'paymentMethod': 'Tunai',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 2, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
      ],
      'memberDiscount': 20000,
      'total': 115000
    },
    {
      'customer': 'Customer 6',
      'time': '21/09/2024 - 10:08 AM',
      'paymentSource': 'Yanto',
      'paymentMethod': 'QRIS',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 1, 'price': 50000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 5000,
      'total': 65000
    },
    {
      'customer': 'Customer 5',
      'time': '21/09/2024 - 10:00 AM',
      'paymentSource': 'Mulyo',
      'paymentMethod': 'Tunai',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 1, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
      ],
      'memberDiscount': 10000,
      'total': 75000
    },
    {
      'customer': 'Customer 4',
      'time': '21/09/2024 - 09:55 AM',
      'paymentSource': 'Jin Kazama',
      'paymentMethod': 'Debit',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 2, 'price': 50000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 10000,
      'total': 110000
    },
    {
      'customer': 'Customer 3',
      'time': '21/09/2024 - 09:50 AM',
      'paymentSource': 'Steve Fox',
      'paymentMethod': 'Tunai',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 1, 'price': 50000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 5000,
      'total': 65000
    },
    {
      'customer': 'Customer 2',
      'time': '21/09/2024 - 09:40 AM',
      'paymentSource': 'Lee Chaolan',
      'paymentMethod': 'Tunai',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 1, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
      ],
      'memberDiscount': 10000,
      'total': 75000
    },
    {
      'customer': 'Customer 1',
      'time': '21/09/2024 - 09:45 AM',
      'paymentSource': 'Kuma',
      'paymentMethod': 'QRIS',
      'items': [
        {'name': 'Tiket Dewasa', 'quantity': 2, 'price': 50000},
        {'name': 'Tiket Anak', 'quantity': 1, 'price': 35000},
        {'name': 'Jaket Pelampung', 'quantity': 1, 'price': 20000},
      ],
      'memberDiscount': 20000,
      'total': 135000
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCF7),
      appBar: AppBar(
        title: Text(
          'Riwayat Penjualan',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFF5F5F5),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: _salesData.length,
        itemBuilder: (context, index) {
          final sale = _salesData[index];
          return Card(
            color: Color(0xFFEDEDED),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Color(0xFF3A6D8C)),
            ),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ExpansionTile(
              title: Text(
                sale['customer'],
                style: TextStyle(
                  color: Color(0xFF213F84),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                sale['time'],
                style: TextStyle(
                  color: Color(0xFF213F84),
                ),
              ),
              children: sale.containsKey('items')
                  ? [
                      Divider(color: Color(0xFF213F84)),
                      _buildSaleDetails(sale),
                    ]
                  : [],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSaleDetails(Map<String, dynamic> sale) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.credit_card, color: Colors.grey),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sale['paymentSource'],
                    style: TextStyle(
                      color: Color(0xFF213F84),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    sale['paymentMethod'],
                    style: TextStyle(
                      color: Color(0xFF213F84),
                    ),
                  ),
                ],
              ),
              Spacer(),
              if (sale['paymentMethod'] == 'QRIS')
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                  child: Center(child: Text('QRIS')),
                ),
            ],
          ),
          SizedBox(height: 8),
          ...sale['items'].map<Widget>((item) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(color: Color(0xFF213F84)),
                    ),
                    Text(
                      'x${item['quantity']}',
                      style: TextStyle(color: Color(0xFF213F84)),
                    ),
                  ],
                ),
                Text(
                  'Rp ${_formatCurrency(item['quantity'] * item['price'])}',
                  style: TextStyle(color: Color(0xFF213F84)),
                ),
              ],
            );
          }).toList(),
          SizedBox(height: 8),
          // Pindahkan Divider ke atas Total
          Divider(color: Color(0xFF213F84)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total:',
                style: TextStyle(
                  color: Color(0xFF213F84),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rp ${_formatCurrency(sale['total'])}',
                style: TextStyle(
                  color: Color(0xFF213F84),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  String _formatCurrency(int amount) {
    return amount.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]}.');
  }
}

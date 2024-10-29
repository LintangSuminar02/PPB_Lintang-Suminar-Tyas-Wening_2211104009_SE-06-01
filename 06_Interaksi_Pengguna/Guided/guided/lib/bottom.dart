import 'package:flutter/material.dart';
//import 'package:guided/package.dart';
//import 'package:guided/tabbar.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  String? selectedValue; // Tambahkan variabel untuk Dropdown

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _widgetOptions.elementAt(_selectedIndex),

            const SizedBox(height: 20), // Spasi antara widget

            // ElevatedButton
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color.fromARGB(255, 85, 186, 230)),
            //   onPressed: () {
            //     // Aksi yang akan dilakukan ketika tombol ditekan
            //     print('Tombol Elevated ditekan!');
            //   },
            //   child: const Text('Ini ElevatedButton Klik Saya'),
            // ),

            // const SizedBox(height: 20), // Spasi antara widget

            // // TextButton
            // TextButton(
            //   onPressed: () {
            //     // Aksi yang akan dilakukan ketika tombol ditekan
            //     print('Tombol Simpan ditekan!');
            //   },
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.blue,
            //     backgroundColor: Colors.grey[200], // Warna latar belakang
            //   ),
            //   child: const Text('Ini TextButton Simpan'),
            // ),

            const SizedBox(height: 20), // Spasi antara widget

            // DropdownButton
            // DropdownButton<String>(
            //   value: selectedValue,
            //   hint: const Text('Pilih Opsi'),
            //   onChanged: (String? newValue) {
            //     setState(() {
            //       selectedValue = newValue;
            //     });
            //   },
            //   items: <String>['Opsi 1', 'Opsi 2', 'Opsi 3']
            //       .map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

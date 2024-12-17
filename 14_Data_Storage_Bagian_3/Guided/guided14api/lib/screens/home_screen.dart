import 'package:flutter/material.dart';
import 'package:guided14api/services/api_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  List<dynamic> _posts = []; // Menyimpan list posts
  bool _isLoading = false; // Untuk indikator loading
  final ApiService _apiService = ApiService(); // Instance ApiService

  // Fungsi untuk menampilkan SnackBar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  // Fungsi untuk memanggil API dan menangani operasi
  Future<void> _handleApiOperation(
      Future<void> operation, String successMessage) async {
    setState(() {
      _isLoading = true; // Menampilkan indikator loading
    });

    try {
      await operation; // Menjalankan operasi API
      setState(() {
        _posts = _apiService.posts; // Mengupdate list posts
      });
      _showSnackBar(successMessage); // Menampilkan pesan sukses
    } catch (e) {
      _showSnackBar('Error: $e'); // Menampilkan pesan error
    } finally {
      setState(() {
        _isLoading = false; // Menyembunyikan indikator loading
      });
    }
  }

  // Fungsi untuk fetch posts
  void _fetchPosts() {
    _handleApiOperation(
      _apiService.fetchPosts(),
      'Posts berhasil diambil!',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HTTP Request Example'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 113, 255, 246),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _posts.isEmpty
                      ? Center(
                          child: const Text(
                            "Tekan tombol GET untuk mengambil data",
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: _posts.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Card(
                                  elevation: 4,
                                  child: ListTile(
                                    title: Text(
                                      _posts[index]['title'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      _posts[index]['body'],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
              Center(
                child: ElevatedButton(
                  onPressed: () => _handleApiOperation(
                      _apiService.fetchPosts(), 'Data berhasil diambil!'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text('GET'),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () => _handleApiOperation(
                      _apiService.createPost(), 'Data berhasil ditambahkan!'),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('POST'),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () => _handleApiOperation(
                      _apiService.updatePost(), 'Data berhasil diperbarui!'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('UPDATE'),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () => _handleApiOperation(
                      _apiService.deletePost(), 'Data berhasil dihapus!'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('DELETE'),
                ),
              ),
            ],
          ),
        ));
  }
}

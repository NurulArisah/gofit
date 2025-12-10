import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

// Nanti kalau file screen sudah dibuat, uncomment baris ini:
// import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Pastikan google-services.json sudah ada di folder android/app
  // Kalau belum ada, baris ini akan bikin aplikasi crash/error.
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Nanti daftarkan provider di sini, contoh:
        // ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        title: 'GoFit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark, // Tema Gelap
          primaryColor: const Color(0xFF00E676), // Hijau
          scaffoldBackgroundColor: const Color(0xFF121212),
          useMaterial3: true,
        ),
        // Ganti home ke LoginScreen() nanti kalau file-nya sudah jadi
        home: Scaffold(
          body: Center(
            child: Text("GoFit Siap! Struktur sudah benar.",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}
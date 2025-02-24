import 'package:flutter/material.dart';
import 'package:pertemuan3/widget/welcome_button.dart';
import 'package:pertemuan3/screens/signin.dart';
import 'package:pertemuan3/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5D7B4), // Warna latar belakang
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Logo Better-Nak
              Image.asset(
                'images/LogoBetter-nak.png',
                width: MediaQuery.of(context).size.width * 0.6,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),

              // Judul
              const Text(
                "Better-Nak",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),

              // Tombol Masuk
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: WelcomeButton(
                  buttonText: "Masuk",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signin()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Daftar Sekarang
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: WelcomeButton(
                  buttonText: "Daftar Sekarang",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              // Tombol Masuk dengan Google
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: OutlinedButton.icon(
                  onPressed: () {
                    // Aksi login dengan Google
                  },
                  icon: Image.asset('images/google_icon.png', width: 24),
                  label: const Text(
                    "Masuk dengan Google",
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Teks Ketentuan Layanan
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Dengan masuk atau mendaftar, kamu menyetujui Ketentuan Layanan dan Kebijakan Privasi.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

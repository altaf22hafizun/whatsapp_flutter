import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setelan"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: NetworkImage('https://i.pravatar.cc/100?user='),
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Altaf Hafizun",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Sibuk",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Akun",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Notifikasi keamanan, ganti nomor",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock),
                ),
                title: Text(
                  "Privasi",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Blokir kontak, pesan sementara",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.emoji_emotions_rounded),
                ),
                title: Text(
                  "Avatar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Buat, edit, foto profil",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.chat),
                ),
                title: Text(
                  "Chat",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Tema, wallpaper, riwayat chat",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notifikasi",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Pesan, group dan nada dering panggilan",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.storage),
                ),
                title: Text(
                  "Penyimpanan dan Data",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Penggunaan jaringan, unduh otomatis",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.language),
                ),
                title: Text(
                  "Bahasa Applikasi",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Bahasa Indonesia (bahasa perangkat)",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help),
                ),
                title: Text(
                  "Bantuan",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  "Pusat bantuan, hubungi kami",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.group),
                ),
                title: Text(
                  "Undangan Teman",
                  style: TextStyle(
                    fontSize: 16,
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

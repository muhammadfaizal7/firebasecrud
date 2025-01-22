# README

## Belajar Menggunakan Firestore dengan Flutter

### Pendahuluan
Firestore adalah layanan database NoSQL dari Firebase yang dirancang untuk menyimpan dan menyinkronkan data secara real-time di aplikasi. Firestore sangat cocok untuk aplikasi yang memerlukan pembaruan data secara instan, mudah diintegrasikan dengan Flutter, dan mendukung fitur offline.

Dalam pembelajaran ini, kita membangun aplikasi Flutter sederhana yang dapat menambahkan, membaca, memperbarui, dan menghapus catatan (CRUD) menggunakan Firestore.

---

### Fitur yang Dikembangkan
1. **Menambahkan Catatan:** Pengguna dapat menulis catatan melalui dialog input dan menyimpannya ke Firestore.
2. **Membaca Catatan:** Catatan yang disimpan di Firestore ditampilkan dalam daftar secara real-time.
3. **Memperbarui Catatan:** Pengguna dapat mengedit catatan yang ada melalui dialog edit.
4. **Menghapus Catatan:** Pengguna dapat menghapus catatan tertentu dari Firestore.

---

### Struktur Proyek

#### File dan Fungsi Utama:
1. **`main.dart`**
   - Inisialisasi Firebase dan menjalankan aplikasi Flutter.

2. **`home_page.dart`**
   - Antarmuka utama aplikasi untuk menampilkan dan mengelola catatan.
   - Menggunakan **StreamBuilder** untuk membaca data secara real-time dari Firestore.
   - Fitur CRUD (Create, Read, Update, Delete) diimplementasikan di sini.

3. **`firestore.dart`**
   - Berisi logika untuk operasi Firestore seperti menambahkan, membaca, memperbarui, dan menghapus data.

---

### Cara Menjalankan Aplikasi
1. **Persiapan Firebase:**
   - Buat proyek Firebase di [Firebase Console](https://console.firebase.google.com/).
   - Tambahkan aplikasi Android/iOS ke proyek Firebase.
   - Unduh file konfigurasi (`google-services.json` untuk Android, `GoogleService-Info.plist` untuk iOS).
   - Tempatkan file konfigurasi di direktori proyek Flutter Anda.

2. **Install Firebase Dependencies:**
   Tambahkan dependensi berikut di `pubspec.yaml`:
   ```yaml
   dependencies:
     firebase_core: ^latest_version
     cloud_firestore: ^latest_version
   ```
   Kemudian jalankan:
   ```bash
   flutter pub get
   ```

3. **Jalankan Aplikasi:**
   ```bash
   flutter run
   ```

---

### Hasil Belajar
- Memahami cara kerja Firestore untuk menyimpan dan membaca data secara real-time.
- Implementasi CRUD (Create, Read, Update, Delete) menggunakan Firestore di Flutter.
- Penggunaan **StreamBuilder** untuk mendengarkan perubahan data di Firestore.
- Membuat antarmuka pengguna yang interaktif untuk aplikasi berbasis catatan.

---

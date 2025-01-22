import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Koleksi "Notes" di Firestore
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("Notes");

  // Create: Tambahkan catatan baru
  Future<void> addNote(String note) async {
    try {
      await notes.add({
        'note': note,
        'timestamp': Timestamp.now(),
      });
    } catch (e) {
      print("Failed to add note: $e");
    }
  }

  // Read: Mendapatkan semua catatan
  Stream<QuerySnapshot> getNotes() {
    return notes.orderBy('timestamp', descending: true).snapshots();
  }

  // Update: Perbarui catatan berdasarkan doc id
  Future<void> updateNote(String docId, String updatedNote) async {
    try {
      await notes.doc(docId).update({
        'note': updatedNote,
        'timestamp': Timestamp.now(),
      });
    } catch (e) {
      print("Failed to update note: $e");
    }
  }

  // Delete: Hapus catatan berdasarkan doc id
  Future<void> deleteNote(String docId) async {
    try {
      await notes.doc(docId).delete();
    } catch (e) {
      print("Failed to delete note: $e");
    }
  }
}

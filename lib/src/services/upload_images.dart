import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class UploadFirestoreStorage{

  Future<List<String>> uploadImages({required List<File> files, required String collection, String? fileName}) async {
    List<String> urls = [];
    for(int i = 0; i < files.length; i++){
      String currentUrl = await _uploadFile(files[i], collection, fileName: fileName ?? Timestamp.now().millisecondsSinceEpoch.toString(),);
      urls.add(currentUrl);
    }
    return urls;
  }

  Future<String> _uploadFile(File file, String collection, {String? fileName}) async {
    String url = '';
    String currentFileName = Timestamp.now().millisecondsSinceEpoch.toString();
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child(collection)
    .child("${fileName ?? currentFileName}.jpg");
    UploadTask task = arquivo.putFile(file);
    await task.then((p0) async {
     url = await p0.ref.getDownloadURL();
    });
    debugPrint(url);
    return url;
  }

  Future<String> uploadFile({required File file, required String path}) async {
    String url = '';
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference pastaRaiz = storage.ref();
    Reference arquivo = pastaRaiz.child("$path/${file.path.split('/').last}");
    UploadTask task = arquivo.putFile(File(file.path));
    await task.then((p0) async {
     url = await p0.ref.getDownloadURL();
    });
    debugPrint(url);
    return url;
  }

}
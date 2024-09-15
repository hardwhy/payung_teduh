import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

showDocumentPicker(
  BuildContext context, {
  Function(File file)? onPickedFile,
}) {
  final ImagePicker picker = ImagePicker();

  // Pick image from gallery
  Future<void> pickFromGallery() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final file = File(pickedFile.path);
      onPickedFile?.call(file);
    }
  }

  // Capture image from camera
  Future<void> pickFromCamera() async {
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final file = File(pickedFile.path);
      onPickedFile?.call(file);
    }
  }

  // Pick file from file explorer
  Future<void> pickFromFileExplorer() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      final file = File(result.files.single.path!);
      onPickedFile?.call(file);
    }
  }

  return showSheet(
    context,
    child: Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MenuIcon(
            icon: Icons.image,
            text: 'Gallery',
            onTap: pickFromGallery,
          ),
          MenuIcon(
            icon: Icons.camera_alt_outlined,
            text: 'Camera',
            onTap: pickFromCamera,
          ),
          MenuIcon(
            icon: Icons.folder_outlined,
            text: 'Document',
            onTap: pickFromFileExplorer,
          ),
        ],
      ),
    ),
  );
}

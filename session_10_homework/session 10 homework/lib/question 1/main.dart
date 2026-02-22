/*
1. Notes App – Organize Your Notes
You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.-
- The app should allow searching for a note by its title.
*/
import 'dart:io';
import 'notes_app.dart';

void main() {
  NotesApp notesApp = NotesApp();
  bool running = true;

  while (running) {
    print("\n==== Notes App ====");
    print("1. Create Note");
    print("2. List Notes");
    print("3. Search Note");
    print("4. Edit Note");
    print("5. Delete Note");
    print("6. Exit");
    print("===================");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter title: ");
        String title = stdin.readLineSync() ?? '';

        stdout.write("Enter content: ");
        String content = stdin.readLineSync() ?? '';

        try {
          notesApp.createNote(title, content);
          print("Note created successfully");
        } catch (e) {
          print("Error: $e");
        }
        break;

      case '2':
        notesApp.listAllNotes();
        break;

      case '3':
        stdout.write("Enter note ID: ");
        int id = int.parse(stdin.readLineSync()!);

        var note = notesApp.searchForANote(id);
        if (note != null) {
          print(note);
        } else {
          print("Note not found");
        }
        break;

      case '4':
        stdout.write("Enter note ID to edit: ");
        int id = int.parse(stdin.readLineSync()!);

        stdout.write("Enter new title (leave empty to skip): ");
        String? newTitle = stdin.readLineSync();
        if (newTitle != null && newTitle.trim().isEmpty) {
          newTitle = null;
        }

        stdout.write("Enter new content (leave empty to skip): ");
        String? newContent = stdin.readLineSync();
        if (newContent != null && newContent.trim().isEmpty) {
          newContent = null;
        }

        try {
          notesApp.editNote(id, newTitle: newTitle, newContent: newContent);
        } catch (e) {
          print("Error: $e");
        }
        break;

      case '5':
        stdout.write("Enter note ID to delete: ");
        int id = int.parse(stdin.readLineSync()!);
        notesApp.deleteNote(id);
        break;

      case '6':
        running = false;
        print("Goodbye 👋");
        break;

      default:
        print("Invalid choice");
    }
  }
}
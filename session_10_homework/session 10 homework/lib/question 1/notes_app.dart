import 'note.dart';

class NotesApp {
  List<Note> _notes = [];
  int _id = 0;
  void createNote(String title, String content) {
    Note note = Note(++_id, title: title, content: content);
    _notes.add(note);
  }

  void listAllNotes() {
    if (_notes.isEmpty) {
      print('No notes found');
    } else {
      for (var element in _notes) {
        print('ID: ${element.id}');
        print('Title: ${element.title}');
        print('Content: ${element.content}');
        print('Date: ${element.dateCreatedAt}');
        print('-------------------------------');
      }
    }
  }

  Note? searchForANote(int id) {
    for (var note in _notes) {
      if (note.id == id) {
        return note;
      }
    }
    return null;
  }

  void editNote(int id, {String? newTitle, String? newContent}) {
    bool found = false;
    for (var note in _notes) {
      if (note.id == id) {
        found = true;
        if (newTitle != null) {
          note.updateTitle(newTitle);
        }

        if (newContent != null) {
          note.updateContent(newContent);
        }

        print('Note updated successfully');
        break;
      }
    }
    if (!found) {
      print('Note not found');
    }
  }

  void deleteNote(int id) {
    bool found = false;

    for (int i = 0; i < _notes.length; i++) {
      if (_notes[i].id == id) {
        _notes.removeAt(i);
        found = true;
        print("Note deleted successfully");
        break;
      }
    }

    if (!found) {
      print("Note not found");
    }
  }
}

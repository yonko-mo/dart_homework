class Note {
  int _id = 0;
  late String _title;
  late String _content;
  late DateTime _dateCreatedAt;

  Note(this._id, {required String title, required String content}) {
    if (title.trim().isEmpty) {
      throw Exception("Title cannot be empty");
    }

    if (content.trim().isEmpty) {
      throw Exception("Content cannot be empty");
    }

    _title = title;
    _content = content;
    _dateCreatedAt = DateTime.now();
  }

  void updateTitle(String newTitle) {
    if (newTitle.trim().isEmpty) {
      throw Exception("Title cannot be empty");
    }
    _title = newTitle;
  }

  void updateContent(String newContent) {
    if (newContent.trim().isEmpty) {
      throw Exception("Content cannot be empty");
    }
    _content = newContent;
  }

  int get id => _id;
  String get title => _title;
  String get content => _content;
  DateTime get dateCreatedAt => _dateCreatedAt;
}

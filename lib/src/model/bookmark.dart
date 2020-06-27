class Bookmark {
  Bookmark(
      {this.title = '',
      this.description = '',
      this.url = '',
      this.edit = true});

  String title;
  String description;
  String url;
  bool edit;

  void update(Bookmark bm) {
    title = bm.title;
    description = bm.description;
    url = bm.url;
  }
}

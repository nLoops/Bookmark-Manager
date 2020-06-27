class Bookmark {
  Bookmark(
      {this.title = '',
      this.description = '',
      this.url = '',
      this.edit = true,
      this.isFresh = true});

  String title;
  String description;
  String url;
  bool edit;
  bool isFresh;

  void update(Bookmark bm) {
    title = bm.title;
    description = bm.description;
    url = bm.url;
    isFresh = bm.isFresh;
  }
}

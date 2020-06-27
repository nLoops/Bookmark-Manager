import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:bookmark_manager/src/bm_form/bm_form_component.dart';

import '../model/bookmark.dart';

@Component(
    selector: 'bm-scaffold',
    templateUrl: 'bm_scaffold_component.html',
    directives: [coreDirectives, formDirectives, BookmarkFormComponent])
class BookmarkScaffoldComponent {
  final List bookmarks = [
    Bookmark(
        title: 'Creative Bracket',
        description: 'Go-to Dart blog containing Dart',
        url: 'https://creativebracket.com',
        edit: false),
    Bookmark(
      title: 'Dartlang Home',
      description: 'Official website',
      url: 'https://dartlang.org',
      edit: false,
    ),
    Bookmark(
      title: 'Creative Bracket',
      description: 'Official website',
      url: 'https://flutter.io',
      edit: false,
    )
  ];

  Bookmark editedBookmark;

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }

  void addBookmark() {
    bookmarks.add(Bookmark());
  }

  void editBookmark(int index){
    bookmarks[index].edit = true;
  }
}

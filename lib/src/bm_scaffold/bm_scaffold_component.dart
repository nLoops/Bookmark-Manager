import 'package:angular/angular.dart';
import 'package:bookmark_manager/src/bm_form/bm_form_component.dart';

import '../model/bookmark.dart';

@Component(
    selector: 'bm-scaffold',
    templateUrl: 'bm_scaffold_component.html',
    directives: [coreDirectives, BookmarkFormComponent])
class BookmarkScaffoldComponent {
  final List bookmarks = [
    Bookmark(
        title: 'Angular Dart',
        description: 'Come and learn Angular dart',
        url: 'https://angulardart.dev/guide/learning-angular',
        edit: false),
    Bookmark(
      title: 'Dart-lang Home',
      description: 'Official website',
      url: 'https://dartlang.org',
      edit: false,
    ),
    Bookmark(
      title: 'Build a unique user experience with Flutter',
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

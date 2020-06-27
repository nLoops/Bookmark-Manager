import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../model/bookmark.dart';

@Component(
  selector: 'bm-form',
  templateUrl: 'bm_form_component.html',
  directives: [coreDirectives, formDirectives],
)
class BookmarkFormComponent implements OnInit {
  @Input() // I can pass it from another HTML,
  // for more info look at scaffold HTML file.
  Bookmark bookmark;
  Bookmark editedBookmark;

  final _formDeleteCtrl = StreamController();
  @Output('onDelete')
  Stream get formDelete => _formDeleteCtrl.stream;

  bool submitted = false;

  @override
  Future<void> ngOnInit() async {
    editedBookmark = Bookmark()..update(bookmark);
  }

  void updateBookmark(NgForm form) {
    submitted = true;
    if (form.valid) {
      bookmark
        ..update(editedBookmark)
        ..edit = false
        ..isFresh = false; // cascade methods, return full instance and access all vars
    }
  }

  void removeBookmark() {
    _formDeleteCtrl.add(null);
  }
}

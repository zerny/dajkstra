import 'dart:html';

void updateHighlightedElements() {
  Location loc = window.location;
  for (Element elm in document.queryAll("div, a")) {
    elm.classes.clear();
  }
  if (!loc.hash.isEmpty) {
    String hash = loc.hash.substring(1);
    querySelector("#$hash").classes.add("highlighted");
  }
}

void main() {
  window.onHashChange.listen((e) => updateHighlightedElements());
  updateHighlightedElements();
}

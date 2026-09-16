class Utils {
  static String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }
}

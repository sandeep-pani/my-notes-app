//generic exception
class GenericAuthException implements Exception {
  String errorCode = "";
  GenericAuthException(String e) {
    List<String> l = e.split('-');
    String res = "";
    for (int i = 0; i < l.length; i++) {
      res += "${l[i][0].toUpperCase()}${l[i].substring(1)} ";
    }
    errorCode = res;
  }
}

class UserNotLoggedInAuthException implements Exception {}

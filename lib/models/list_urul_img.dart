class ListMolelURL {
  ListMolelURL() {
    metvork();
  }
  List<String> mylinks = [];
  final _maxurl = 5;
  void metvork() {
    for (int i = 1; i <= _maxurl; i++) {
      mylinks.add('images/cats/$i.jpg');
    }
  }

  void addlink(String link) {
    mylinks.add(link);
  }
}

import 'dart:html';

void loadData() {
  var url = "http://eve-marketdata.com/api/item_orders2.json?char_name=demo&buysell=b&type_ids=34,36";

  // call the web server asynchronously
  var request = HttpRequest.getString(url).then(onDataLoaded);
}

void onDataLoaded(String responseText) {
  var jsonString = responseText;
  print(jsonString);
}

main() {
  loadData();
}

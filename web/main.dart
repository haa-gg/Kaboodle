import 'dart:html';

void loadData() {
  var url = "http://eve-marketdata.com/api/item_orders2.json?char_name=demo&buysell=b&type_ids=34,36";

  HttpRequest.getString(url).then((result) => print('Request complete $result'));
}

void onDataLoaded(String responseText) {
  var jsonString = responseText;
  print(jsonString);
}

main() {
  loadData();
}

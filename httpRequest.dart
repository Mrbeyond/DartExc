import 'dart:io';
import 'dart:convert';

class Https{
  Https(){
    useGetUrl();
  }
  useGetUrl(){
   HttpClient _httpClient = new HttpClient();
    _httpClient.getUrl(Uri.parse("http://127.0.0.1:5050/data.json"))
    .then((HttpClientRequest request) => request.close())
    .then((HttpClientResponse response) => {
      response.transform(Utf8Decoder())
      .listen((event) {
        print(event);
        print(event.runtimeType);
      })
    })
    .catchError((err)=> print(err))
    ;    
  }
}
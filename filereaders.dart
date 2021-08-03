import "dart:io";
import "dart:async";
import "dart:convert";

class ReasdAsString{
  ReasdAsString(){
    // stringReader();
    streamReader();
  }

  stringReader()async {

    final String fileName = "./one.txt";
    Future<String> file = File(/*Directory.current.path+ */fileName).readAsString();
    String content = await file.then((String doc) => doc);
    print("$content is content");
    print("read");
  }

  streamReader()async {
    final String fileName = "./one.txt";
    Stream<String> lines = File(fileName).openRead()
    .transform(utf8.decoder)
    .transform(LineSplitter());
    try {
      await for(String line in lines){
        print("$line");

      }
      print("read");
      
    } catch (e) {
      print("Error is $e");
    }
  }

}
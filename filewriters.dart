import "dart:io";

class ReadFileInSync{

}

class WriteFileInASyncAsString{
  final String fileName = "one.txt";
  
  WriteFileInASyncAsString(){
    String? content = stdin.readLineSync();
    File file = File(this.fileName);
    file.writeAsString(content.toString());
    print(file);
  }
}

class WriteFileInASyncAsStringUsingASync{
  final String fileName = "oneAsyncWait.txt";  

  WriteFileInASyncAsStringUsingASync(){
    writeNow();
  }

  void writeNow()async {
   File  file = File(this.fileName);    
    String? content = stdin.readLineSync();
    await file.writeAsString(content.toString());
    print(file);
  }
}

class WriteFileUsingStream {
  final String fileName = "Streamer/stream.txt";
  WriteFileUsingStream(){
    writeWithStream();
  }

  writeWithStream() async{
    Future<File> file = File(fileName).create(recursive:true);
    final sink = await file.then((File filer) => filer.openWrite());
    sink.write("\n file written from stream openwrite \n done at ${DateTime.now()} \n");
    print("written");
    sink.close();
  }
}
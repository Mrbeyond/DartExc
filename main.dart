import 'dart:io';
// import "./filereaders.dart";
// import "./filewriters.dart";
import 'httpRequest.dart';

void main(){
  // print("this is main");
  // new C(true).seeC();
  // print(new Overrider().toString());
  // new Overrider();
  // new Mixer();
  // new WriteFileInASyncAsString();
  // new WriteFileInASyncAsStringUsingASync();
  // new WriteFileUsingStream();
  // new ReasdAsString();
  new Https();
}

class A{
  int a;
  A(this.a);

  seeA(){
    print(a);
  }
}


class B {
  String b;
  B(this.b);

  seeB(){
    print(b);
  }
}

class C extends B{
  bool c;
  C( this.c ):super("super from C");

  seeC(){
    print("${this.c} is the c value and super b is ` ${this.b} `" );
  }
}

abstract class ImpA{
 ImpA(){
   print("interface A");
 }
   impAMethodA(){}
}

class ImpB{
 ImpB(){
   print("interface A");
 }
 impBMethodA(){}

}

class Overrider implements ImpA, ImpB{
  Overrider(){
    print("The Overrider");
    impBMethodA();
    impBMethodA();
  }

  impBMethodA(){
    print("impBMethodA(){}");
  }

  impAMethodA(){
    print("impAMethodA(){}");
  }

  ovr(){
    print("from over");
  }
}

 mixin MixA{
   mixAOne(){
     print("mixAOne");
   }

   mixATwo(){
     print("mixATwo");
   }
 }

  mixin MixB{
   mixBOne(){
     print("mixBOne");
   }

   mixATwo(){
     print("mixBTwo");
   }
 }

 class Mixer with MixA, MixB{
   Mixer(){
     print("Mixer constructor");
     mixAOne();
     mixATwo();
     Reactions();
   }

   @override
  mixAOne() {
    return super.mixAOne();
  }

  Reactions(){
    print(Directory.current.path);
    print("Enter your name");
    String? name = stdin.readLineSync();
    print("Your name is $name");
  }
 }
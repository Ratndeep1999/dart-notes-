

// Type Inference : it basically concept that conforms the type of variable base on value assigned,
// internally manage by dart analyzer

void main() {

  // e.g
  var age = 21 ;   // this kind of declaration is known as creating variable with type annotation
  print(age.runtimeType);  // int

  // type given is must but not know what the specific type of value
  dynamic name = 'Ratndeep' ;
  print(name.runtimeType);  // String



  var x ;
  print(x.runtimeType);  // Null  (nothing or no value) it means dart system haven't infer the type of variable


  // Now

  // Type safety : dart is a type safety language, its always check value must match with variable type
  int y ;
  y = 10 ;  // ok
  // y = 10.5 ;  // compile time error

  // Type Safety are two types of checking system both manage internally
  // 1. static/ compile time checking : give exception at compile time
  // 2. runtime checking : second level of type safety , give exception at runtime



}
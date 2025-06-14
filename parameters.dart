
// Parameters and it's types

// parameters is the process of passing values to the function
// The values passed to function must match the number of parameters defined

// e.g - here a and b are parameters
void add( int a, int b ){ }


void main(){


  // 1. Positional Parameter :
  // in simple term position of parameters
  // Here, must to supply the arguments in same order as define parameters when wrote the function
  // if I call function with arguments in wrong order, I will get wrong result

  // e.g 1
  printData('Female', 'Sonali'); // passing arguments in wrong order when function calling
  printData('Sonali', 'Female'); // passing arguments in correct order
  // Hello !, My name is Female and i am Sonali
  // Hello !, My name is Sonali and i am Female

  print("\n");

  // e.g 2 default values on positional para.
  printDetails('Sonali', 'Female'); // i forget to pass title here so, it takes default values
  printDetails('Sonali', 'Female', 'miss.'); // but here i pass proper value for title
  printDetails('Ratndeep', 'Male', 'mr.');
  // hello ! mr. / miss. Sonali you are Female
  // hello ! miss. Sonali you are Female
  // hello ! mr. Ratndeep you are Male

  print("\n");

  // 2. Named Parameter :
  // It is nothing but to pass arguments from () with name when function call's
  // { curly braces } are use to specify named parameter and
  // all named parameter are optional so it must to give null safety

  // e.g 1
  // Here, I call the function I passed values at wrong positions but I define values with their parameters names
  cookDish(desert : "Chooklet Ice-Cream", nonVeg : "Chicken Biryani", salad : "Fruit salad",
      veg : "Paneer Biryani", chinese : "Fried Rice with Chow-min Soup");
  // Chicken Biryani is non-Veg dish
  // Paneer Biryani is Veg dish
  // Fried Rice with Chow-min Soup is chinese dish
  // Fruit salad is started food
  // Chooklet Ice-Cream is desert for last

  print("\n");

  // Here, I forget to pass some values so it automatically takes null values and i doesn't give required
  cookDish(desert : "Chooklet Ice-Cream", salad : "Fruit salad" );
  // null is non-Veg dish
  // null is Veg dish
  // null is chinese dish
  // Fruit salad is started food
  // Chooklet Ice-Cream is desert for last

  print("\n");


  // Required Named parameters
  // it allow to pass values is must when function calls otherwise compile time error

  // e.g 2 Required with named para.
  requiredDetails( gender: "Female", age: 22, name: "Sonali");
  // My name is Sonali, and I am Female I'am 22 years old


  // 3. Optional Parameters
  // use to make the parameter optional in function call

  // e.g Combination of Positional and Named parameters
  cousins("Ratndeep", 'Sujal', 'Suraj', sister: 'Sonali');  // sister is optional and named parameter
  // Ratndeep is my big brother from us, and Sonali she is the small and single one, Sujal he is younger one, Suraj is middle brother

  // Note : I have to follow the position of positional para. when passing values
  // and In named parameter i can use required or default values


}

// printData function
void printData(String name, String gender){
  print("Hello !, My name is $name and i am $gender");
}

// printDetails function
void printDetails(String name, String gender, [String title = "mr. / miss."]){  // title is optional here if i doesn't pass title then it take default value
  print("hello ! $title $name you are $gender");
}

// cookDish function
// here all parameters wrote inside {} so, ? operator is must to give
void cookDish({String? nonVeg, String? veg, String? chinese, String? salad, String? desert}){
  print('$nonVeg is non-Veg dish');
  print('$veg is Veg dish');
  print('$chinese is chinese dish');
  print('$salad is started food');
  print('$desert is desert for last');
}

// requiredDetails function
void requiredDetails({required String name, required int age, required String gender}){
  print("My name is $name, and I am $gender I'am $age years old");
}

// cousins function
// here sister is optional if value pass then ok other wise it will take default value 'Sana'
void cousins(String olderBrother, String youngBrother, String middleBrother, { String? sister = 'Sana' }){
  print("$olderBrother is my big brother from us, "
      "and $sister she is the small and single one, $youngBrother "
      "he is younger one, $middleBrother is middle brother");
}
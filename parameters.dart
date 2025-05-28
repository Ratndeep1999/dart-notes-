
// Parameters and it's types

// parameters is the process of passing values to the function
// The values passed to function must match the number of parameters defined

// e.g - here a and b are parameters
void add( int a, int b ){ }


void main(){


  // 1. Positional Parameter :
  // Here, must to supply the arguments in same order as define parameters when wrote the function
  // if I call function with arguments in wrong order, I will get wrong result

  // e.g 1
  printData('Female','Sonali'); // passing arguments in wrong order when function calling
  printData('Sonali','Female'); // passing arguments in correct order

  // e.g 2 default values on positional para.
  printDetails('Sonali','Female'); // i forget to pass title here so, it takes default values
  printDetails('Sonali','Female', 'miss.'); // but here i pass proper value for title
  printDetails('Ratndeep','Male', 'mr.');


  // 2. Positional Parameter :




  // 3. Positional Parameter :




  // 4. Positional Parameter :


}

// printData function
void printData(String name, String gender){
  print("Hello !, My name is $name and i am $gender");
}

// printDetails function
void printDetails(String name, String gender, [String title = "mr. / miss."]){  // title is optional here if i doesn't pass title then it take default value
  print("hello ! $title $name you are $gender");
}
/// Positional Parameters
// Here, position/order of parameters matter.
// arguments position must match with the positional parameter when function invoke.

// Function Definition
myBioData(String name, int age, int height){
  print('My self $name, my age is $age and my height is $height cm');
}

void main(){
  // Incorrect argument order (logical error)
  myBioData('Ratndeep', 166, 26); // My self Ratndeep, my age is 166 and my height is 26 cm

  // Correct argument order
  myBioData('Ratndeep', 26, 166); // My self Ratndeep, my age is 26 and my height is 166 cm
}
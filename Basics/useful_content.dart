/// Multiline String and Special Characters

/// Multi-line String
//  '''   '''  or   """    """ Use to create multi-line String.

/// Special characters
// \ : (backslash)  use to print utf 16 char as a string
// \n : Use to skip the current line
// \t : Use to give tab space

void main() {
  String multiLineText = ''' 
       This is multi-line
       Text with three 
       single quotes ''';

  print(multiLineText);
  // This is multi-line
  // Text with three
  // single quotes

  String data = "my name is \n Ratndeep and my age is \t 26 years old";
  print(data);
  // my name is
  // Ratndeep and my age is 	 26 years old

  // here, r is use before double or single quote to print String as it is
  String dataAsItIs = r"my name is \n Ratndeep and my age is \t 26 years old";
  print(dataAsItIs); // my name is \n Ratndeep and my age is \t 26 years old
}

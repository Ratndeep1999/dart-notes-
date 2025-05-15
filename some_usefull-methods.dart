


void main() {

  // 1. Creating multiple string : to create multi-line String we use '''   '''  or   """    """
  String multiLineText = ''' 
       This is multi-line
       Text with three 
       single quotes ''' ;

  print(multiLineText);      // This is multi-line
                             // Text with three
                             // single quotes



  // 2. Special characters

  // 2.1. \ : (backslash)  use to print utf 16 char as a string

  // 2.2. \n : print('\n')  to print line of space or move to next line

  // 2.3. \t : it allow to give tab space

  // 3. Creating raw String : to print string as it is special char wont work here, r is use after = equal-to sign

  // e.g
  num price = 10;
  // regular result
  String withoutRawString = " The value \n of price is \t $price " ;
  print(withoutRawString);  // The value
                            // of price is 	  10

  // here, r is use before double or single quote to print String as it is
  String withRawString = r" The value \n of price is \t $price " ;
  print(withRawString); // The value \n of price is \t $price


}
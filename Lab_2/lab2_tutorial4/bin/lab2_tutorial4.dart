/// Author: Pritesh Parmar

/**
 * Roll No: CE083
 * Lab 2 - Tutorial 4
 * Chapter 4: Control Flow
 */

const PI = 3.14;

enum States {
  happy,
  sad,
}

enum Music { playing, paused, stopped }

void main(List<String> arguments) {
  // Boolean Data Type: var can take values 'true' or 'false'.
  const bool trueOp = true;
  const falseOp = false;
  const result = ('c' == 'd'); // equality operator
  print(result);
  /*
    Output:
    false
  */

  // As int and double are derived from num, they can be compared
  int a = 9;
  double b = 10;
  // ! is the NOT operator (bang operator)
  print(!(a == b));
  /*
    Output:
    true
  */

  // other operators for comparison <= , >= ,< , > , !=
  // Logical operators are used to combine multiple conditions to form a result.

  /// Precedence of operators (higher -> lower) : ! , >= , > , <= , < , == , != , && , ||

  print(!trueOp == falseOp && trueOp || falseOp);
  /*
    Output:
    true
  */
  // can override the precedence with parentheses

  print(!(trueOp == falseOp && trueOp || falseOp));
  /*
    Output:
    true
  */
  // can use == and != operator to compare strings

  const mySchool = "Modi School";
  const desiredUniversity = "University of NewYork";
  print(mySchool == desiredUniversity);
  /*
    Output:
    false
  */

  // MINI-EXERCISE
  // 1)Create a constant called myAge and set it to your age. Then, create a constant named isTeenager that uses Boolean logic to determine if the age denotes someone in the age range of 13 to 19.

  const myAge = 19;
  const isTeenager = (myAge >= 13) && (myAge <= 19);
  print("Teenager: $isTeenager");
  /*
    Output:
    Teenager: true
  */

  // 2) Create another constant named maryAge and set it to 30. Then, create a constant named bothTeenagers that uses Boolean logic to determine if both you and Mary are teenagers.
  const maryAge = 30;
  const isBothTeenager = isTeenager && (maryAge > 13) && (maryAge < 19);
  print("Both Teenager: $isBothTeenager");
  /*
    Output:
    Both Teenager: false
  */

  // 3) Create a String constant named reader and set it to your name. Create another String constant named ray and set it to 'Ray Wenderlich'. Create a Boolean constant named rayIsReader that uses string equality to determine if reader and ray are equal.
  const reader = "Pritesh Parmar";
  const ray = "Ray Wenderlich";
  const rayReader = reader == ray;
  print("rayReader: $rayReader");
  /*
    Output:
    rayReader: false
  */

  // IF - ELSE statements
  if (isTeenager) {
    print("Yoohooo!! I'm teenager!!");
  } else {
    print("Ahhhh nooo!! I'am not teenager!!");
  }
  /*
    Output:
    Yoohooo!! I'm teenager!!
  */

  // ELSE IF chain --- test multiple conditions, one by one, until a true condition is found.

  const marks = 86;
  if (marks > 80) {
    print("Your Grade: A");
  } else if (marks > 70) {
    print("Your Grade: B");
  } else {
    print("Failed!");
  }
  /*  
    Output:
    Your Grade: A
  */

  // SCOPE of the variables can be categorized as global or local
  // global(top level variable) is defined outside of the main function and outside of any curly braces.
  // local is defined inside some braces and scope of them is within those braces only

  if (trueOp) {
    const score =
        100; // local within if block, can't access outside the if block
    print("The score is: $score");
  }
  /*
    Output:
    The score is: 100
  */

  // TERNARY OPERATOR needs 3 operands and helps to reduce the length of the code making it more readable

  (isTeenager)
      ? print("Yoohooo!! I'm teenager!!")
      : print("Ahhh no!! I'am not teenager!!");

  /*
    Output:
    Yoohooo!! I'm teenager!!
  */

  // SWITCH CASE statement --- replace if else chaining
  // not support range comparisons like >=,<= etc. only supports == operation

  // ENUM is used to define your own type with a finite number of options with switch statement. Also, it has to be defined outside of the main function.
  // Naming convention: name -> 1st capital letter : value -> lowerCamelCase
  // dart enum is not integer

  const stateOfMind = States.happy;
  print(stateOfMind);
  print(stateOfMind.index);
  /*
    Output:
    States.happy
    0
  */

  const stateOfMusic = Music.paused;
  switch (stateOfMusic) {
    case Music.playing:
      print("Music is played well.");
      break;
    case Music.paused:
      print("Music is paused.");
      break;
    case Music.stopped:
      print("Music is stopped.");
      break;
  }
  /*
    Output:
    Music is paused.
  */
}

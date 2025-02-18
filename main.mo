import Float "mo:base/Float";

actor Calculator{
  public func add( num1 : Float, num2 : Float) : async Text {
    return ("The sum is: " # Float.format(#fix 3, num1 + num2));
  };
  public func subtract (num1 : Float, num2 : Float) : async Text {
    return ("The difference is: " # Float.format(#fix 3, num1 - num2));
  };
  public func divide (num1 : Float, num2 : Float) : async Text {
    if (num2 == 0) {
      return ("Cannot divide by zero");
    } else {
      return ("The quotient is: " # Float.format(#fix 3, num1 / num2));
    }
  };
  public func pow (num1 : Float, num2: Float) : async Text {
    return ("The result is: " # Float.format(#fix 3, num1 ** num2));
  };
  public func addMany (array : [Float]) : async Text {
    var sum : Float = 0;
    for (item in array.vals()) {
      sum += item;
    };
    return ("The result is: " # Float.format(#fix 3, sum))
  }
}

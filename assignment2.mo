import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";

actor {
  shared (msg) func is_anonymous() : async Bool {
    return (Principal.toText(msg.caller) == "2vxsx-fae")
  };

  var favoriteNumber : HashMap.HashMap<Principal, Nat> = HashMap.HashMap<Principal, Nat>(10, Principal.equal, Principal.hash);

  shared (msg) func add_favorite_number(n : Nat) {
    favoriteNumber.put(msg.caller, n); 
  };

  shared (msg) func show_favorite_number() : async ?Nat {
    favoriteNumber.get(msg.caller);
  };

  shared (msg) func add_favorite_number2(n : Nat) : async Text {
    if (favoriteNumber.get(msg.caller) == null) {
      return ("You've successfully registered your number");
      favoriteNumber.put(msg.caller, n);
    };
    return ("You've already registered your number")
  }
}

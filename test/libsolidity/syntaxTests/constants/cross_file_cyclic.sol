==== Source: a ====
import "b";
uint constant c = d;
==== Source: b ====
import "a";
uint constant b = c;
uint constant d = b;
contract C {
    uint constant a = b;
}
// ----
// TypeError 6161: (17-36): The value of the constant a has a cyclic dependency via a.

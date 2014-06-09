// HelloWorld1.java
public class HelloWorld1{					// Is the class the unit code object?
    public static void main(String[] args){	// ... or is it the method?
        System.out.println("Hello World");	// ... or is it *just* this line?
    }
}
// SLOC: 5, Size: ?



// There is only one actual line of code here
// ...adding methods increases size
// That is, the structures *do* contribute to the size

// That line of code is actually many smaller operations
// ... so what exactly *is* the lego block here?

// conclusion:
// Even the simplest programs only tell us about the macro structure, not the atomic pieces of code - the legos we're looking for.

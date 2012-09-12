GUTS
====
Chapter 1
=========
### Outline

current notions of code size - the statement - its size - principle for counting larger bits of code - thus size of a seq - then selection - then iteration - then routine - examples -  - then tree of routines - then graph of routines -  - therefore functions - then procs - then apps -  - examples -  - concept of base - counting size of a multi-language app - example/comparison of some such apps

Current notions of code size
----------------------------
"Source lines of code" is currently the most popular way of measuring size of code. The pros/cons of using such a unit of measure are:

Pros:

* It is actually measurable (with some error, but still)
* It is language agnostic
* It is useful as a gross comparison tool.
* Its relatively easy to apply to small programs manually; and can be automated with the same relative ease for bigger codebases.

Cons:

* It's a "dumb" unit of measure in that it doesnt consider the structure of code *AS CODE*; it instead treats it as text.
* Its not an accurate measure of size per se; just a convenient one.

Some other ways of describing code size are:

* Code city: that helps visualize the size of code as a city, not measure it.
* Software cartography: Again, a visualization of code size, not a way to measure it; but its more precise in its depiction than KLOC.
* Structure 101's fatness metric.
* Alan Kay's (Empire state building made of A4 sheets of code) [add ref here]

Obviously, we're a little aways from an actual measure of software size. So let's try to build a natural one.

Statements: the smallest units of code
--------------------------------------
All of programming has (famously been depicted)[add ref here] as being made of 3 basic operations:

* Sequence, ie steps done in sequence
* Selection, ie the choice of one step vs the other, aka the IF
* Iteration, ie the ability to repeat steps that have been executed before, aka the LOOP

Assuming we know the "size" of each such operation, the size of the program(s) that contain these operations can be computed as an accumulation of their individual sizes. Thus,

	size(simple program or routine) 	= sum(size(statement)) V statements in the program
	size(program with subroutines + main) 	= size(main) + sum(size(subroutine)) V subroutines in program
	size(app with multiple programs)	= sum(size(program)) V programs in app

... Or more generally

	size(code) 				= sum(size(contents)) V contents in the container
	where
		container	= routine | program | app | ...
		contents	= statement | routine | program | app | ...

And thus we arrive at the concept of an atomic unit of execution being the basis of measurement. It has been variously called operation, step and statement above; so let's standardize on _Statement_.

	Statement: the smallest unit of code execution in a language

Of course, this immediately is language dependent: a Java statement will (with intuitive obviousness) not be the same as an Assembly statement; but neither will it be the same as a Ruby statement, or even a C# one (even though the 2 languages are closest to each other in this list). Already, it is thus "inferior" to SLOC. However, it is appealing aesthetically: as programmers we think in packets of logic, not lines of text; so to measure what we build in those terms seems more appropriate.

But what, actually, *IS* a statement? The SSI classification of computational operations doesnt say what the operation actually is; it merely identifies two specific ones as being primoridial - the `IF` and the `LOOP`; and leaves out the actual definition of what each step actually is or does. So not much help there.

Let's see if an example helps. Here's the standard Hello World in Java:

		// program 1
		public class HelloWorld{
			public static void main(String[] args){
				System.out.println("Hello World");	//line 1
			}
		}
		// SLOC: 5, Size: ?

Quite a few questions arise (which are equally applicable to other similar languages,btw so this is not a Java rant):

1. Is line 1 a single statement, or does each access of a package/class variable constitute an atomic unit of code execution? 
2. Similarly, is a function call a single statement, or is it actually an alias for a collection of statements - a compound statement, if you will?
3. Is the class definition a statement? Similarly, what about main()'s definition?
4. SLOC is a clearly understandable number. How do we put numbers against this size concept?

Let's try to answer each question and form some opinions along the way.

Question 1: Is System.out.println(...) one statement?
-----------------------------------------------------
Let's contrast Program 1 with some similar code that might flesh Qn #1 out better:
Here's one contrasting program:

		// program 2
		import java.io.PrintStream;
		public class HelloWorld{
			public static void main(String[] args){
				PrintStream outPS = System.out;
				outPS.println("Hello World");
			}
		}
		// SLOC: 7, Size > Size(Program 1)?

	Aside: Note that Program 2's SLOC went up because `PrintStream` had to be imported in, while Program 1 doesnt need that line because of "platform" affordances. More on such platform implications later.
	
... and one more:

		// program 3
		public class HelloWorld{
			public static void main(String[] args){
				System.out.print("Hello ");
				System.out.println("World");
			}
		}
		// SLOC: 6, Size = Size(Program 2)?

Now, both these programs are admittedly contrived, but they are reflective of similar contrasts in real code where either representation would be useful[1]. Program 2 splits out the original line 1 into two, separating the individual steps involved; while Program 3 splits the final function call itself into two while still achieving the same end result. Obviously they're using more steps than Program 1 and therefore must have a bigger size, but in terms of defining a _Statement_ they have only served to muddy the waters. It seems like there are two ways to answer Question #1:

1. Simple: A statement is whatever appears between two statement separators per the language's grammar.
2. Exact: A statement is quite literally the simplest statement that could be written in the language; any time you can convert a statement in the language's grammer into a set of smaller statements within that same grammar that effectively does the same thing, it cannot be considered an atomic _Statement_. Its a Compound Statement.

The Simple way is good in that it is easily applicable - both manually and with tools; and bad in that expressive languages can "pack a lot of wallop" into a single complicated statement (I'm looking at you, APL) which will not be represented truthfully in the size of the program. This way can also be considered the next incremental step to counting SLOC - with the statement separator replacing the newlines.

The Exact way is good in that it tends towards purity in measurement - code can be sized in terms of the atomic operations supported by the language itself and/or its runtime. It does, however, require non-trivial understanding/parsing of the source by human/tool to arrive at the exact size of code.

Should we pick one method over the other? The scientific mind suggests discarding the Simple for the Exact. The Simple approach, however, might be useful for "rough estimates". It could also be that the difference between sizes arrived at by the two methods are statistically close enough for a sufficiently large body of code that we might not want to go through the pain of calculating size exactly.

So let's keep both for now.

Onto Question #2.

[1]: For eg where you'd split a long chain of method calls into an intermediary value for readability, but this increases size because now you have an additional variable.

Question 2: Is a function call one statement?
---------------------------------------------
A function call is indeed a shortcut to invoke a bunch of statements defined elsewhere. However, is the size of a _call_ the same as the definition? I would say no. As long as we size the _definition_ of the function call separately, the actual call itself should have a non-zero size, but it shouldnt be the same as that of the function itself. So yes, a function call is therefore a statement.

Onto Question #2.

Question 3: Is a class a statement? What about functions?
---------------------------------------------------------
At first sight, this question seems trivially answerable: line 1 in Program 1 is the only "working" statement, so the others shouldnt carry any weight. However, it becomes really interesting when contrasted with other languages that do not need such containers as a class and its predetermined `main` function. The same hello world in ruby (or Python), for example, would be:

		# program 4
		println "Hello World"	#SLOC:1, Size: ?

	Note: Yes, I know that this is possible because of "Platform affordances" and that behind the scenes are some intelligent defaults. We'll deal with this "tip of the iceberg"-ness later.
	
Now it seems intuitive that the first program is "larger" than the second one, doesnt it? Or, to contrast in the other direction, what if we wrote our HelloWorld.java like so:

		// program 5
		public class HelloWorld{
			public static void main(String[] args){
				greet();				//line 1
			}
			public static void greet(){
				System.out.println("Hello World");	//line 2
			}
		}
		// SLOC: 8, Size: ?

This (contrived) version of the code is obviously bigger than the previous - while doing the same thing as before.

So Q#3 is really asking the question: Does a language's container structures contribute to its size? I would argue that they do; and thefore should be considered "compound" _Statement_s with some non-zero size of their own.

Let's update our formulas from above, therefore:

		size(code) 	= size(container) + sum(size(contents)) V contents in the container
		where
			container	= routine | program | app | ...
			contents	= statements | containers

To summarize so far:
1. _Statement_ is the unit of measure for software size.
2. _Statement_ can be defined in two ways:
	* Simple: A statement is whatever appears between two statement separators per the language's grammar. A statement has unit size.
	* Exact: A statement is the simplest statement that could be written in the language; a statement in the language's grammer that cannot be converted into a set of smaller statements within that same grammar has unit size. A statement that can be converted thus to a set of smaller statements within the same grammer has size equal to the sum of the individual statement's sizes.
3. Code containers such as functions, procedures, modules, programs, etc have non-zero size of their own.

Onto Question #4.

Question #4: How to numerically calculate size?
-----------------------------------------------
Like before, let's try things out and form opinions as we go. We have to come up with numbers for measuring the sizes of:

* The primordial `IF`s and `LOOP`s
* Statements in both Simple and Exact methods
* Containers

First up: Size of the primoridial `IF` and `LOOP`s. Since our discussion about containers, these look suspiciously like containers, dont they? The `IF` doesnt do anything else other than directing traffic to one sequence of statements or the other, while the `LOOP` is merely re-running code based on a hidden `IF`. So we could just apply the rules for containers on them too, right?

Mostly. We'd be discounting unconditional jumps (such as `goto`s in in Java or C, or `JMP` in most assembly languages) and sphagetti code if we did so. It's entirely possible to model the primordial concepts as even more primordial `IF` and `JUMP` "opcodes" to count such code, but we'll apply the 80-20 here and focus on code that is largely structurally sound.

TODO: Break primordial concepts into opcodes and allow counting of sphaghetti code.

So, `IF` and `LOOP`s are containers. We'll defer their calculation to later when we deal with containers in general, therefore.

Next: Size of Statements. We've to try counting in both the simple and exact way, so here goes.

In the Simple way, since one statement cannot be differentiated from another, the best we can do is to assume some standard size for all statements. The simplest standard size would be `1`, but if we emperically have (say, by comparison to exact measurements) an _average size_ that is known, that could be used too. Obviously, this would be a language or platform specific value. Anyway,

		simple_size_unit(statement) 	= 1
		simple_size_avg(statement)	= Savg	(some emperical value)
		
In the Exact way, there are even more difficulties. We do have the ability of differentiating between different types of statements, but how do we ascribe a number to each type of statement? If we have access to the implementation of those statements ( eg, we have access to the source code of the Java compiler and runtime) we could measure the size of that code and apply the `size(container)` formula. But what if we didnt have access to the source, or dont want to go down that rabbit hole?

We will do exactly that later, but for now, let's see how far we can go without doing that. We have a couple of shortcuts:

* Like in the simple way, we could give the exact statements unit size. This is better than the simple way because all those compound statements have been broken down already and will thus have size > 1; but it doesnt count the *actual* size of the exact statements
* Like the second option in the simple way, we could give all statements a size greater than one. This would be useful to compare codebases written with multiple languages, for example.
* Finally, we could make a half-hearted attempt at going down the rabbit hole. It works something like this: we pick one statement as the unit statement regardless of its actual size; and then index every other statement's size to the chosen one's. So  

In formula form that would be:
		exact_size_unit(statement) 	= 1
		exact_size_const(statement)	= Sconst	(some constant value)

Alright, let's leave the statements and their "wheels within wheels" wierdness and move onto...

Size of Containers. As a refresher, the formula for contained code is `size(code) = size(container) + sum(size(contents))`. Let's apply this the primordials and containers of various kinds.

Applying it to `IF`, we get:

		size(IF block) 	= size(IF) + sum(size(contents))

`IF` being a primordial, we can safely set `size(IF) = 1`. Its contents, however, are the multiple paths that can be taken depending on the condition being tested; and therefore can be of varying sizes. What then, is the size of the contents? Should we consider that some paths might never be executed? If we're measure size, I'd say NO. _Dead code still adds to the size of the code_. So,

		size(IF contents) = sum(size(each path))

Next up: `LOOP`. This is the most straight-forward of the containers. Its intrinsic size is unit (because its primordial) and the size of its contents are summed up. Or in formulas:

		size(LOOP) = 1
		size(LOOP contents) = sum(size(statements in LOOP))
		
TODO: WORK OUT SIZE OF PGMS
TODO: RABBIT HOLE
TODO: UNITS

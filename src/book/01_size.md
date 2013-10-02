Code Size
=========

* [Outline](outline)
* [What is size?](#what_is_size)
* [The basic structure of code](#struct_of_code)
* [Sizing up Hello World](#sizing_up_hw)
* [Down to the basics - SSI](#ssi)
* [Turtles all the way](#turtles)
* [Back up the rabbit hole](#back_up)
* [A new measure of code size](#turing_unit)
* [Disk vs Process Size and Static vs Dynamic Size](#kinds_of_sizes)
* [Sizing up the data](#sizing_data)
* [Engineer's Corner: Implementing Turing sizes](#engg_corner)

<a name="outline"></a>
Outline
-------

why count size, compare with sloc and other current ways of counting size, basic structure of code: language, program, operation, sizing up Hello World as an example, therefore compound operations and containers, still not found size of operations, therefore SSI, add viz as Lego blocks, size of sequence, size of if, add viz as pipes, size of loop, add viz of marble run, **add viz about graphs**, still not found size of operations other than if and loop, therefore go down one level, then infinite levels, therefore resolve that at asymptote of the turing machine all sizes are 1, therefore define that all we need is a relative "base", then back up to hello world picking the java language as the base and count size that way, then present comparison with sloc again, then introduce the "turing" as the size unit relative to any base, then answer questions about sizing 2 langs relative to a base, then talk about platform affordances, then talk about static vs dynamic size, **then talk about sizing up data**, then move to engineering and the simple and exact ways of counting size.


<a name="what_is_size"></a>
What is size?
-------------

The common sense description of size is: 

		Size: How big something is. 

Length, area and volume are typical ways of quantifying how big something is. When applied to code, this essentially means how much code there is; specifically excluding ideas like how complex it is, how fit it is for its intended purpose and so forth.

The most common real-world use of such a measure is estimation: when building new software or changing existing ones we like to estimate the effort involved. Is there a larger purpose, however - one that serves the practitioner and not just the manager?   

I posit that size is one of those basic properties of code that aids in _understanding_ and _knowing_ code as well. We talk routinely of small, well designed codebases that can be understood and used easily; and also of large, unwieldy codebases that are difficult to understand. Wouldn't it be nice to quantify those subjective statements? A case might therefore be made that size is one of the properties that we *should* understand about code. Also, note that the "small" and "large" parts mentioned above point to the size of the code; while  the "easy" and "difficult" parts point to its complexity. The two are certainly related, so quantifying size might also lead to understanding other properties of code.

### Current notions of code size

Let's first look at how size is measured currently. In my cursory review of the current state of affairs, there are two broad approaches to measuring size:

1. **Empirical**: The aim here is to have numbers that represent size so that decisions and actions can be taken based on them. [Source Lines of Code][sloc], [Function Points][fp], [COCOMO][cocomo], [Structure 101's fatness metric][s101] and [Halstead metrics][hals] seem to fit into this category.
2. **Descriptive**: These measures of size do use numbers that are easily derived from the source code, but they are used primarily to visualize it so that humans can grok it and take appropriately intelligent action. Code visualization tools such as [Code city][ccity], [Software cartography][scg] and Alan Kay's [Empire state building made of A4 sheets of code][akay1] are some examples of this type of measure.

[sloc]: http://tbd/
[fp]: http://tbd/
[cocomo]: http://tbd/
[s101]: http://tbd/
[hals]: http://tbd/
[ccity]: http://tbd/
[scg]: http://tbd/
[akay1]: http://tbd/

Here is a comparison of the pros and cons of these two approaches:

<table>
	<thead>
		<tr><th width="10%">Approach</th><th width="40%">Empirical</th><th width="40%">Descriptive</th></tr>
	</thead>
	<tbody>
		<tr>
			<td width="10%">Pros</td>
			<td width="40%">
				<ul>
					<li> Actually measurable (with some error, but still) </li>
					<li> Language agnostic</li>
					<li> Useful as gross comparison tools.</li>
					<li> Relatively easy to apply to small programs manually; and gracefully upgradable to bigger codebases with automation.</li>
				</ul>
			</td>
			<td width="40%">
				<ul>
					<li> Easy for humans to understand a lot of information in one go. </li>
					<li> Able to transcend the implementation language depending on the abstraction chosen.</li>
				</ul>
			</td>
		</tr>
			<td width="10%">Cons</td>
			<td width="40%">
				<ul>
					<li>Not "smart" units of measure in that they don't consider the structure of code *AS CODE*. With the possible exception of the Halstead metrics, the other approaches treat code as either text or conceptual "functions".</li>
					<li>Not accurate measures of size per se; just convenient ones.</li>
					<li>Not easily extended to other properties of code; the relations are forced and the equations (if any) have empirical constants and pre-conditions attached.</li>
				</ul>
			</td>
			<td width="40%">
				<ul>
					<li>Don't give direct feedback as to what's wrong; a practiced user has to interpret the results.</li>
					<li>Do not actually measure anything at all; merely provide a visualization.</li>
				</ul>
			</td>
		</tr>
	</tbody>
</table>

Obviously, neither approach seems comprehensive nor feels right. Wouldn't it be nice to have a measure of code size that:

* Used the structure of the code **AS CODE**,
* Was language agnostic,
* Was indeed measurable,
* Was extensible to define other properties of code with,
* And yet was easy for humans to understand and use to understand a lot of information in one go?

That's what I'd call a natural measure of software size. The rest of this chapter is an attempt to build one. My approach is part science, part engineering: I'd like to develop a theory that is general enough, but with sufficient focus on how to apply it to real world software.

<a name="struct_of_code"></a>
The basic structure of code
---------------------------

Programs, in general, can be described as a set of instructions or operations to do a certain task. The set of instructions or operations that make up a particular program is a subset of the available instructions or operations, and this superset is usually called a language. I'll repeat these concepts as definitions so that they can be referred to later:

		Language: A finite set of instructions or operations that can be used to write code.
	              All code is written in languages.
		Operation: The smallest unit of independent code execution in a language.
	              It is the basis of size measurement because of its atomicity.
	                                                                                     --(1)

Instruction or Statement might have been a better choice for the "smallest unit of code" because we deal with high level languages mostly these days, but I've chosen **Operation** to keep it generic to all computer languages.

I'll also introduce a BNF-ish syntax below to describe the grammar/structure of the constructs we're talking about to make it a little more concrete:
		
		language  :=  operation+
		program   :=  operation+ where operation belongs to language
		operation :=  ....smallest unit of code exec....
	                                                                                     --(2)

Of course, this only highlights the fact that while we have an english definition for Operation, it's not precise enough yet to use it for actual measurement. However, this characterization seems to intuitively say that the size of a program is a summation of the size of the operations contained in it, __if__ we knew how to size operations. In hand wavy formulas, this can be expressed as:

		size(program)      = sum(size(operation)) for all operations in the code
		assuming
		size(operation)    = a known value                                               --(3)

This would be a nice result, but it still remains to be determined if size can indeed be characterized this way. This chapter will attempt to do just that.


<a name="sizing_up_hw"></a>
Sizing up Hello World
---------------------

Let's start by trying to size up the most common program of all - the Hello World program - and use that to refine our intuitive expectation of summing up sizes. For specificity, I'll use Java, but I'm using Java as an example of programming languages in general, not as _the_ defining language for this theory. Here's Hello World in Java:

		// program 1
		public class HelloWorld{
			public static void main(String[] args){
				System.out.println("Hello World");	//line 1
			}
		}
		// SLOC: 5, Size: ?

>> Note that I've included the _Source Lines of Code (SLOC)_ count along with the listing. I'll do that for all progams in this chapter with the intent of providing comparison to the new measure of size this chapter attempts to build. I have chosen SLOC as that is the most prevalent way of measuring code size, not in exclusion to the other measures listed above.

So this is a program that weighs in at 5 SLOCs; but if we were to consider it as code instead of lines of text, what would its size be? 

Now, if you're not a Java person, you're likely to complain that I chose a bad language to start with; and I'd almost agree. There's actually only one line of code in there - the one that prints the message; everything else is ceremonial structure. However, it does help expose the fact that code written in any language eventually has some superstructure; and in that sense Java's requirement to expose such structure is more useful for our size-measuring purposes than other languages' "hiding" of such structure "under the carpet", so to speak.

So, warts notwithstanding, let's see if we can use this example to examine the idea of code size. From line 1 alone, quite a few questions arise:

1. Line 1 actually has 1 package access, 1 object access and a function call - not very atomic. Is it a single Operation, really?  
2. What about the function call itself? `println()` is it's not an actual language feature; it's a method in a library. Should we actually count its call as an Operation?
3. ... And while we're counting, should we count the size of the method itself when all we're doing is calling it?

If we factor in the rest of the program, more questions arise:

4. Is the class definition an Operation? Similarly, what about `main()`'s definition?
5. SLOC is a clearly understandable number. How do we put numbers against this size concept?

TODO: MAKE NUMBERING CORRECT ABOVE

Let's try to answer each question and form some opinions along the way.

### Question 1: Is System.out.println(...) one Operation?

Let's contrast Program 1 with some similar code that might flesh Qn #1 out better:
Here's one contrasting program:

		// program 2
		import java.io.PrintStream;
		public class HelloWorld{
			public static void main(String[] args){
				PrintStream outPS = System.out;    // line 1.1
				outPS.println("Hello World");      // line 1.2
			}
		}
		// SLOC: 7, Size > Size(Program 1)?

>> Note that Program 2's SLOC went up because `PrintStream` had to be imported in, while Program 1 doesn't need that line because `System.out` is a default stream. More on such "platform affordances" and their implications later.
	
Now, program 2 is admittedly contrived, but it's reflective of similar contrasts in real code where the latter representation would be useful \[[1](#ftnote1)\]. It splits out the original line 1 into two, separating the individual steps involved and it does increase the size of the program even if with an "unnecessary" addition of a local variable; but it highlights the fact that `System.out.println(...)` is something more than atomic - it's a __Compound Operation__, if you will.

[1]: For e.g. where you'd split a long chain of method calls into an intermediary value for readability, but this increases size because now you have an additional variable

In fact, we could take it a step further and do this:

		// snippet 2.1
		PrintStream outPS;                 // line 1.1.1
		outPS = System.out;                // line 1.1.2
		outPS.println("Hello World");      // line 1.2
		// SLOC : 3, Size : ?

*Now* it cannot be broken down anymore and therefore matches our definition of a __Operation__ from above. So if we took the definition to heart and broke line 1 down this way, 3 "smallest possible" Java statements are required to actually make it. 

All of this discussion means one thing: we have to recognize that some operations can be aggregates and add that as a definition:

		Compound Operation: An operation that can be broken down into smaller operations 
		                    within the Language's set of operations.
		                                                                                 --(4)

... and update the BNF-ish version (2) to include this fact:

		language  :=  operation+
		program   :=  operation+
		operation := compound_op | simple_op
		simple_op :=  ....smallest unit of code exec....                                 --(5)

...and update formulas (3) to reflect this:

		size(program)            = sum(size(compound_op |simple_op)) 
		                           ...for all operations in the code
		size(compound_op)        = sum(size(simple_op)) 
		                           ...for all simple_ops that can replace the compound op.
		assuming
		size(simple_op)          = a known value                                         --(6)

### One more variation of Program 1

Are we done with Qn #1? Not quite; here's another version of the same program:

		// program 3
		public class HelloWorld{
			public static void main(String[] args){
				System.out.print("Hello ");
				System.out.println("World");
			}
		}
		// SLOC: 6, Size = Size(Program 2)?
		
This program splits the final function call itself into two while still achieving the same end result. Clearly an operation can not only be broken into smaller bits, but what it *does* can also be broken into smaller bits. This hints at a couple of things:

* That a given problem can be solved by multiple programs. It seems intuitive that there's at least one program that solves it with the least size and that there are potentially more than one programs that solves it with more.
* What a program IS (structure and its size) does not predict what the program DOES (its meaning). We will have to look elsewhere for meaning - either downwards to the platform that it is based on or upwards to the human (or proxy human i.e., code generator) that creates it. 

### Question 2: Is calling a library function an Operation?

While a library function itself is not a language feature, the ability to make a function call certainly is. A function call is essentially a shortcut to invoke a bunch of statements defined elsewhere; and supporting such a feature does require some effort on the language runtime's part. So Operation it is. In definition form again:

	Defining and calling functions are Operations if the language supports it directly.  --(7)

### Question 3: Should we count the size of the function if all we're doing is calling it?

The size of the function itself (i.e., that of its body) should certainly be different from that of a call to the function. This answer highlights the fact that these two constructs - the definition of a function and the call to it - are two separate operations that a language supports. The definition is clearly a compound operation, but what about the call itself? If the language supports the concept of functions and calling them, the operation of calling a function has to be atomic, by definition. Updating the BNF-ish definitions, therefore:

		operation   := compound_op | simple_op
		compound_op := function_def | ...other compound ops...
		simple_op   := function_call | ....other smallest units of code exec....         --(8)

Onto Question #4.

### Question 4: Is a class an Operation? What about functions?

At first sight, this question seems trivially answerable with a 'NO' because line 1 in Program 1 is the only "working" Operation and the others shouldn't have much importance. However, it becomes interesting when contrasted with other languages that do not necessarily need containers such as classes or a predetermined function like `main`. The same hello world in Ruby (or Python), for example, would be:

		# program 4
		print "Hello World", "\n"	#SLOC:1, Size: ?

>> Note: Yes, I know that this is possible because of "Platform affordances" and that behind the scenes are some intelligent defaults. I also realize that this is not the same as Java's `System.out`. As mentioned before, we'll deal with this "tip of the iceberg"-ness later.

Now it seems intuitive that the first program is "larger" than the second one, doesn't it? Or, to contrast in the other direction, what if we wrote our HelloWorld.java like so?

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

So Q#4 really is: Does a language's container structures contribute to its size? Going by the examples above where they "add to the structure", I would argue that they do; and therefore should be considered __Compound Operations__ with some non-zero size of their own. This also answers the question about `main()` - and by extension - all functions: functions are containers and therefore have a non-zero size of their own in addition to contributing whatever size their contents have to the total size.

Updating  definitions from (7) and (8) above to include these facts, therefore:

		compound_op       := class_def | function_def | ...other compound ops...
		class_def         := class_construct + class_contents
		class_contents    := method_def*, field*
		method_def        := function_def
		field             := operation
		function_def      := function_construct + function_contents
		function_contents := operation+                                                  --(9)

and

		size(compound_op)        = size(function_def) | sum(size(simple_op)) for other compound ops.
		size(class_def)          = size(class_construct) + size(class_contents)
		size(class_contents)     = size(method) + size(field) for all methods and fields in the class
		size(method)             = size(function_def)
		size(field)              = size(operation)
		size(function_def)       = size(function_construct) + size(function_contents)
		size(function_contents)  = sum(size(operation)) for all operations in the function
		                                                                                 --(10)
Or more generally,

		size(container)         = size(container_construct) + size(contents)
		size(contents)          = sum(size(operation)) for all operations in container
		                                                                                 --(11)
Using (11) we can easily extrapolate to larger structures:

		size(app)             = size(app_construct)             + sum(size(programs in app))
		size(program)         = size(program_construct)         + sum(size(package|modules|classes|functions in program))
		size(package|module)  = size(package|module construct)  + sum(size(classes|functions in module|package))
		                                                                                 --(12)

Looking at (11) above, however, one has to wonder how different a container is from "just another" Atomic Operation in terms of contribution to size. Its presence adds to the total size just as another atomic operation does and the formula above ensures that its contents' size is accounted for. As long as we retain the `+ sum(size(contents))` part, we could treat containers as some more atomic operations during analysis.

### Question #5: So how to numerically calculate size?

So how do we put some numbers against these ideas? We're slightly better off than before, but we still don't know how to size the atomic operations, nor do we know the size of the containers themselves. All we have determined so far is: *If* we know the sizes of the operations and their containers, the overall size is an accumulation of individual sizes.

### Review

Ok, so `Hello World` helped us understand compound operations and containers, but didnt help much with understanding the nature and size of the operations themselves. Maybe a program in a high level language is closer to the application of programming as opposed to its core. 

Maybe we need to look at a simpler model of programming?

<a name="ssi"></a>
Down to the basics - SSI
------------------------

Let's try the simplest notion of code. All of programming has [famously][ssi] [been][spt] [depicted][vNMArch] as being made of 3 basic operations:

* Sequence, i.e. steps done in sequence
* Selection, i.e. the choice of one step vs the other, aka the `IF`
* Iteration, i.e. the ability to repeat steps that have been already been executed, aka the `LOOP`

[ssi]: http://en.wikipedia.org/wiki/Structured_programming#Low-level_structure_programming
[spt]: http://en.wikipedia.org/wiki/Structured_program_theorem
[vNMArch]: http://en.wikipedia.org/wiki/Von_Neumann_architecture

Let's try sizing up each of these basic operations, starting with...

### Sequence

A Sequence is technically not an operation itself, but a string of them. Let's plod on, however, to see if we can glean something about operations from a collection of them. Let's write a simple _Sequential_ program like "Print 5 superhero names". I'm going to switch to pseudo-code so that we can ignore all platform issues. Here's the program in a language that somewhat resembles assembly:

		// program 6
		print "Superman"
		print "Batman"
		print "Green Lantern"
		print "Green Arrow"
		print "Aquaman"
		stop
		// SLOC: 6, Size: 6* units

Since we're at the same impasse of not knowing the sizes of operations and this is a pseudo-language, let's make some assumptions. Assuming the size of the `print` and `stop` operations are 1 unit, and using (3):
	
		size(program6) = sum(size(5 print operations & 1 stop operation))
		               = 1* + 1* + 1* + 1* + 1* + 1*
		               = 6* units
		(the * is to remind us that sizes being 1 is an assumption)                      --(13)
		               
... is 6* units. This is sort of similar to counting lines of code and fits our common sense notion that the code is "6 units long" or "6 units tall".

Would that be long or tall? Here's where a little physical analogy might help. 

![Kid builds a Lego tower](images/lego-tower.jpg "This is your Code")
![Kids' Lego tower falls](images/lego-tower-falling.jpg "This is your Code crashing")

We talk all the time about "building" software and code building has long been equated to piling Lego blocks on top of each other. And when heavy code breaks it crashes very similarly to how a heavy Lego structure does. So let's equate size to height. 

One break from the normal way of using Legos, though: code Legos are indeed stacked one block at a time, but by sticking each block __under__ the one that's already in place, not on top. That way, program 6 gets built in the order we read it, not from the last statement upwards.

But that was just a _Sequence_. Let's try some ...

### Selection

... by writing a simple program to check if 5 is odd or even. Again, in pseudo code:

		// program 7
		rem = 5 % 2 		//presumably this lang has vars, and they dont need to be declared
		if rem == 1 then
			print "5 is odd"
		else
			print "5 is even"
		endif
		stop
		// SLOC: 7, Size: 5* sq. units

This program is not just tall, it is wide too. Until the `if` is encountered, things are linear, but at that point we could go one of two ways. This can be visualized as a "left+right" pair or a "down+side" pair, something like so:

		// program 7 (alt view)
		+----------------+
		|rem = 5 % 2     |
		+----------------+-------------------+
		|rem == 1 ?      |                   |
		|    true        |    false          |
		+----------------+-------------------+
		|print "5 is odd"| print "5 is even" |
		+----------------+-------------------+
		|stop            |
		+----------------+

... which certainly goes a longer way in visualizing the code as being bigger; or more accurately, wider. The size of the main branch contributes to the length of the program it's in, while the size of the alternate branch can be considered as adding to the width of the program too (it could contribute to the length). It seems safe to say, therefore, that:

TODO: CHANGE FORMULA TO IF = IF_CONSTRUCT + COND CHK + SIZE OF IND BRANCHES

		size(if)      = size(condition check) + sum(size of individual branches)
					  =  c + sum(b) 
		where
		            c = a non-zero size of the condition check
		            b = size(branch)  
		              = 1 (width) x h (height of branch)                                 --(14)

Applying this to the `if` in program 7 and assuming the condition check is a size 1 (because there's only one comparison being done), we get:

		size(program7's if) = size(condition check) + size(if branch) + size(else branch)
		                    = 1* + 1 x 1* + 1 x 1*
		                    = 3* sq. units                                                --(15)

To use this result in calculating Program 7's size, we've to represent all sizes as "areas" first. Assuming again that the `print` operation was 1 unit tall, we should add that it is 1 unit wide. Program 7's size(area) therefore becomes:

		size(program 7) = sum(size(operations))
		                = size(assignment operation) + size(if) + size(stop)
		                - size(modulus op + assignment) + size(if) + size(stop)
		Now assuming size(modulus op) = 1, we get
		                = 2* + 3* + 1*   assuming the assignment operation is also of size 1.
		                = 6* sq. units, compared to a SLOC of 7.                          --(16)

For completeness, let's convert Program 1's size to "area" units as well:

		size(program 6) = 6* sq. units                                                    --(17)

Note that program 7 has a SLOC of 7, but a size of 6* sq. units. Smaller numerically, but larger by size and semantics.

Does our Lego block analogy still hold up, though? The `if` requires data to be used, a decision to be made and one of (potentially many) alternate routes to be taken. This is probably best visualized as something "flowing" from one statement (i.e. block) to another, with control points to direct flow. Maybe pipes are a better analogy therefore?

![Code as pipes](images/pipes.jpg "This is your Code's plumbing")
![Code as pipes](images/pipes2.jpg "This is your Code's plumbing")

Sorry I couldn't find better pictures, but hope these convey some part of the idea. Every time you see a T-junction or a Cross, think `if` operation; otherwise the flow of liquid represents the Sequence.

Unsatisfying as the pictures are, more so is the analogy. While data does flow from one operation to another, it doesn't flow like a liquid does. Data in a digital computer is discrete and better described as chunked than fluid. Is there a better physical analog? What we need is something that is built using standard parts (like Legos) and allows things to flow through them (like pipes) but only allows solid things. 

Without further ado, I present:

![Code as a marble run, data as marbles](images/marble-run.jpg "Code = pipes, data = marbles")
![Marble run pieces](images/marble-run-pieces.jpg "Note that one piece - the purple one - is a simple logic gate ")

... the marble run! It does everything we would like our physical analog of code to do and then some. It has the standard blocks that link together obviously (which is a slight difference - that the connectors are fixed to the blocks); but it also has "source" and "sink" pieces, pieces that change direction (not all of which are logically important) and even pieces that have some built-in logic. If you look closely you'll find that one of the purple pieces is a simple flip-flop (aka `IF`)- it sends successive marbles down alternate paths.

So it seems that the marble run is indeed a good choice as our physical analog for code. We will use it only as a mental model in our theory forming activity, but there __are__ [real world marble runs that have been created to do actual computations](http://www.hackerspace.lu/2012/01/21/marble-adder/); so it's certainly an apt choice.

For the "still young at heart, not so much in mind" reader, may I offer a more staid analogy? The flow chart is a visualization of code that has persisted over the years:

![Flow chart](images/flowchart.png)!

... or if you prefer a more precise analogy, a directed graph:

![Flow chart](images/flowchart.png)!

In fact, the directed graph might well be the best characterization of programs and I hope to use more of it throughout this book, so I'll just introduce it here.

Ok, enough fun. Let's try the final operation ...

### Iteration

... by writing a simple loop to print 1 to 5. Again in pseudo code:

		// program 8
		loop i = 1 to 5
		  print i
		end loop
		stop
		// SLOC : 4, Size: ?

Written in this form, it seems like the `loop` is a short cut to write out a long sequence of operations. Indeed, program 8 can be rewritten as:

		// program 8A
		print 1
		print 2
		print 3
		print 4
		print 5
		stop
		// SLOC : 6, Size: 6* sq. units
		
Such "unfolding" of loops is not uncommon; and viewed this way we could conclude that a loop's primary size is its height, which is equal to the number of operations within the loop times the number of times those operations are looped around. Not all loops can be unfolded thus, however, as a simple example that uses a `do-while` loop or an infinite loop will attest. However, there's an alternate way to express a loop, presented below. This will work for any kind of loop including ones whose number of iterations cannot be determined up-front. 

		// program 8B
		      i=1
		 top: if not(i <= 5)      // line 1
		 		  goto end 
		      else
		          print i
		          i = i + 1
		          goto top        // line 2
		      end if
		end: stop
		// SLOC : 9, Size : 7* sq. units

Now the true nature of _Iteration_ becomes obvious: `Iteration = if + goto`. The `if` sets up the conditions for iteration and the `goto` executes it. The `goto` is therefore the key ingredient in getting iteration to work, so let's try to understanding it a little better.

A goto is a route from one "block" to another, a connector. Program 8B has 2 obvious kinds of gotos and one that's not that obvious:

1. The conditional goto that is guarded by a comparison (line 1);
2. The unconditional goto that just jumps to another location (line 2); and
3. The implicit goto between operations.

The _Unconditional `goto`_ alters the flow of execution and skips ahead to another location, adding the "width" (or more generally, another dimension) to the program. If the destination of the `goto` is not local to the point of branch off, the impact on size is somewhat difficult to determine.

_Conditional `goto`s_ remove some of that uncertainty by checking a condition before branching. Adding the check reduces the chance of an invalid target or that of "spaghetti code" - an unholy tangle of wild gotos that only makes sense when you write it.  

However, conditional gotos only reduce the chance of indeterminate size, they do not eliminate it. For e.g., the `goto end` line in program 8B could lead to some location that is far away from the rest of the code. So the deciding factor for size of a goto is whether or not its destination is known. Let's call the ones with known, defined destinations like 'top of the loop' as _Bound Goto_s and the ones that are not such as _Unbound Goto_s. Their sizes, therefore, are:

		size(bound goto)  = 1* width x N height already counted elsewhere
		                  = 1* width x 1* height
		                  = 1* sq. units                                                  --(18)

That is, the height of a bound goto exists, but it has typically been already considered as part a "larger structure", so only the contribution of the single goto "block" need be considered.

		size(unbound goto) = G
		where            G = 1 unit height x G1 width  or
		                   = 1 unit width x G2 height                                    --(19)

That is, while we could measure one or more "dimensions" of the unconditional goto, there will always be one dimension that we cannot quantify and therefore its overall size remains an unknown quantity.

Finally, _Implicit `goto`s_: On the "main line" of code, implicit gotos guide the execution of code by stringing successive operations together. In fact the machine executing these programs (or any general computer, for that matter)  can be thought of executing this meta-program:

		// meta program 1
		1: read a specific location for the address of the next instruction to execute
		2: execute it
		3: if step 2 didn't set the next instruction to execute, auto increment to next address in the same location
		4: goto 1
 
So the gotos exist, even if we do not depict them in code at the level of normal discourse. The difference between these gotos and the others is that they connect one operation to another "by default" i.e., in the most obvious way that they are supposed to be connected. As such, it's safe to posit that they do not contribute to the size. That is,

		size(implicit goto) = 0                                                          --(20)

In program 8B, both the `goto`s are well-behaved. They don't fly off to kingdoms unknown: they go to the top of the loop or exit it - two very well-known spots. So they are clearly bound gotos. So the size of program 3B would be:

		size(program 8B) 	= sum(size(operations))
							= size(assignment) + size(if) + size(stop)
							= 1* + size(condition) + size(branches) + 1*
							= 1* + 1* + (1 x 1* + 3 x 1*) + 1*
							= 2* + 4* + 1*
							= 7* sq. units                                                   

More generally, the loop in program 8B could be written in template form as:

		// program 8B-templatized
			  <<.. steps before loop..>>
		      <<initialize loop>>
		 top: if not <<loop condition>>
		 	  then
		 	  	goto end
		 	  else
	            <<loop body>>
	            <<increment loop>>
	            goto top
	          end if
		end:  <<.. steps after loop..>>

Thus,

		size(program 8b loop)     = size(init loop) + size(if)
		Now, let  size(init loop) = i, some nonzero size depending on the type and number of operations

			      size(if)        = size(condition) + size(if branch) + size(else branch)
			                      = size(condition) + size(goto end) + [size(loop body) + size(increment loop) + size(goto top)]
			                      = c + 1* + [ b  + p + 1* ]
		                 
		                 where  c = a nonzero size for the condition check
		                        b = a variable loop body size
		                        p is some variable nonzero size for the increment step

			                      = c + b + p + 2*
			                      = c + b + p + 2*
		Thus,
		          size(loop)      = i + c + b + p + 2*                                   --(21)

... which still comes out to a clean enough "sum of parts" type of equation. 

Back to program 8, however; for we were trying to determine the size of _that_ loop. Here's its template form:

		// program 8-templatized
		loop <<loop init>> to <<loop condition>> <<implicit loop increment>>
		  <<loop body>>
		end loop

At this level of abstraction, all the other elements of the loop are present, but there are no gotos. The gotos are somehow "subsumed" in the mechanism of the loop such that the user of the loop doesn't have to know about it. So at this level, the size of a loop would be:

		size(program 3 loop)   = i + c + b + p                                           --(22)

What about the other forms of loops that we alluded to earlier? Here's the template form of the other typical versions of the loop: the `while` and the `do-while`:

		// while-template                        // do-while-template
		<<loop init>>                            <<loop init>>
		while <<loop condition>>                 do
			<<loop body>>                           <<loop body>>
			<<loop increment>>                      <<loop increment>>
		end while                                while <<loop condition>>
		
All are functionally equivalent and from inspection it's obvious that they have the same size (even if we count the `c` piece in different order). They are structurally different, but that's not germane to their size. 

So to summarize the discourse on loops:

		size(loops with goto) = i + c + b + p + 2*
		size(for loop)        = i + c + b + p
		size(while loop)      = i + c + b + p
		size(do while loop)   = i + c + b + p                                            --(23)

Or more generally,

		size(loop)            = i + c + b + p + o
		              where o = overhead at level of abstraction
		                          = 0 at SSI level
		                          = 2* if gotos are explicitly used                      --(24)

To answer the specific question of Program 8's size, however, we'll have to apply (24) and make some assumptions on the sizes again. Since both the initialization and increment steps in this case are single operations, we'll assume they're also of size 1 sq. unit. The loop body consisting of the single print operation has long been deemed of size 1 sq. unit; and the condition is simple enough so we'll take that too to be a size 1. Now applying these values we get:

		size(program 8)  = size(loop) + size(stop)
						 = i  + c  + b  + p  + o + 1*
						 = 1* + 1* + 1* + 1* + 0 + 1*
		                 = 5* sq. units vs SLOC: 3

### Summary

Let's review: we started off by using the simple SSI model because it was simple and could easily be related to most basic operations. We focused on sizing programs, wrote 3 programs in pseudo-code and came up with formulas for the 3 operations in the model using a (yet unnamed) new measure of size for them. Here're the sizes that we arrived at using the new formulas and measure:

		size(program 6) = 6* sq. units vs SLOC of 6
		size(program 7) = 6* sq. units vs SLOC of 7
		size(program 8) = 5* sq. units vs SLOC of 3                                       --(25)

#### Comparison to SLOC

Admittedly, there's a lot of hand-waving going on here; but the contrast with SLOC is interesting. The 2D-ness of our size unit seems to hint at the structure that goes into loops and conditionals better than the "flat" count of lines. Program 7's size is smaller compared to its SLOC because the textual "overhead" of denoting loop structure is removed from the equation, while Program 8's textual brevity in having all structural elements of the
loop contained in the same line is called out, increasing its size when compared to its SLOC.

#### Combining Sequence, Selection and Iteration

SSI essentially talks about programs as being *combinations* of sequence, selection and iteration; while we've been doing all our analysis in isolation. Let's fix that. Our formulas for sizes of these individual operations are:

		size(sequence) = sum(size(operation)) for all operations in sequence       --(2') program replaced with sequence
		size(if)       = c + sum(b)                                                --(14) 
		size(loop)     = i + c + b + p + o                                         --(24)

Since all these formulas are additions, we *could* treat the `if`s and `loop`s as "compound" operations that contribute a known size to a larger sequence that is the program; and at this larger level, there is only the sequence. This means that (2') above can be restored back to its original form:

		size(program) = sum(size(operation)) for all operations in program
		              = sum(size(ifs)) + sum(size(loops)) + sum(size(other operations))     --(26)

_Now_ we're getting somewhere. We started off with the expectation that the size of the whole would be the sum of the size of the parts; and we've reached that result for the three primordial operations. If we are able to shore up those pesky asterisks we've had to put on the "other" operations also as sums of sizes, we'd be golden.

Also note that as long as all we're doing is measuring size, the order of operations don't seem to matter - only that they are counted. To use the marble run analogy, the size or color of the blocks don't matter - only their number. Obviously, this will not apply for other measures of code such as complexity: we build code in a particular order explicitly so as to effect certain results; but for size this is a Good Thing(TM).

#### Levels of Abstraction

The discussion above kept moving between alternate ways of representing things: Program 7 was represented as programs 7A and Program 8 as 8B to depict the same program with different constructs. These 2 ways can be thought of - especially within the Structured Programming context - as two different languages: the former being a pure structured program with no gotos and the latter as a "lower level", unstructured language that DOES have gotos. This hints at two things that we'll explore soon:

* The size of a construct could differ by level of abstraction even if the two representations are the same in terms of function and semantics.
* Constructs that are considered "atomic" at one level could be "compound" at another.

#### Moving beyond SSI

 The SSI model has been a good deep dive into simple operations, but at the level of abstraction that SSI is described, the `if` and the `loop` are the only concepts required to express general computing, so "what each step in a sequence does" is glossed over. To size an actual codebase, however, we do need to consider each such operation and size them. Up until now we've been making assumptions on their size using those pesky asterisks, but they _do_ need to go.

<a name="turtles"></a>
Turtles all the way
-------------------

Ok, so it's finally time to address the size of operations. Consider a snippet like 2.1 (repeated below):

		// snippet 2.1
		PrintStream outPS;                 // line 1.1.1
		outPS = System.out;                // line 1.1.2
		outPS.println("Hello World");      // line 1.2
		// SLOC : 3, Size : ?

It has a variable declaration (1.1.1), an assignment(1.1.2) and a member access combined with a function call (1.2). Each of these operations don't _feel_ like they could be the same size simply because I immediately begin to imagine their implementation and know that they must be inherently different in implementation and therefore of different sizes.

These questions are still within the same language. With real-world code we will have further issues:

1. When we start comparing one language with another we will have to answer questions like "How does a Hello World in Java compare to one in Ruby?", which will quickly devolve into "How many Java print statements equals one Ruby print" and such like.
2. When we consider applications written using multiple languages (as most applications are today) we might want a universal size metric that applies across all statements in all languages to measure size uniformly. More importantly, it will come handy when measuring two solutions to the same problem using different technology stacks.

Notice, however, that we've again started talking about the base platforms upon which the languages are written and not the languages themselves? What if the implementation is not accessible to us? Or if it is actually hardware and therefore not interpreted or sized the same way?

### Down One level

For argument's sake, let's say we do have access to the platform and can measure the sizes in that language. Would we be able to say anything more about the size of the program under consideration? Let's work it out:

For any language L with n unique Simple operations (including containers) S1, S2, ... Sn (hereafter abbreviated to as `<L,S,n>`), the size of any program P in L is:

		size(P) = K1.size(S1) + K2.size(S2) + ... + Kn.size(Sn)    
			= sum(Ki.size(Si)) for i: 1 to n                                             --(27)

since any or all of the unique simple operations (and/or containers) will have to be used in `Ki` quantities to make the program.

If a language `<L,S,n>` is implemented in terms of another language `<L',S',m>`, each of `L`'s unique simple operations S1...Sn can be themselves expressed as programs in L'. Assuming the simple operations in L' are s1,s2,....sm, we get:

		    size(S1) = sum(Kj.size(sj)) for j: 1 to m
	|||ly,  size(S2) = sum(Kj.size(sj)) for j: 1 to m                                    --(28)

... and so forth. 

But L' *itself* is most probably implemented in terms of another language, say L''. So even if we were able to say anything definitive about the sizes of S1 and S2, it would be in terms of L'' sizes. L'' could very well be built using L'''. Where will this end?

### Down Infinite Levels and back

To illustrate the true nature of this rabbit hole, I present an excerpt from the [Grand Unified Theory of Software Engineering, page TBD][GUTSE]:

[GUTSE]: http://tbd/

> ... Equally frustrating, also these executors of specifications are intangible. To start with, a software process, such as a Java Virtual Machine, is not only a consumer of Java Bytecode specifications, it is also itself an executing program specification, e.g., the file with the name `jvm.exe`. But if we explain the software process in terms of a specification, then this explanation only brings us back to the intangibility of the specification, so we have gained nothing in concreteness. Perhaps, then, we can become concrete by considering the executor of the executor. Typically, a java Virtual Machine is executed by a hardware processor; surely this must be a firm base on which we can base our discipline. Unfortunately, the relief of finding something tangible is short-lived. Because just like an electric capacitor is constructed as a model of the ideal capacitor, a processor is a (physical) model of an ideal processor. It is not important that the processor in a typical computer is implemented in silicon, for it could have been implemented using vacuum tubes, a small and nimble-fingered person, or yet another software program. So also the processor is in this sense independent of the medium in which it is constructed. In the words of Edsgar Dijkstra:
>> Originally I viewed it as the function of the abstract machine to provide a truthful picture of the physical reality. Later, however, I learned to consider the abstract machine as the "true" one, because that is the only one we can "think"; it is the physical machine's purpose to supply "a working model", a (hopefully) sufficiently accurate physical simulation of the true, abstract machine.

In other words, if we started this journey down the levels of implementation to try and understand the size of a Java function call, the next immediate step is the JVM source. From there we could proceed onto its Java or C source, the source of the C runtime, the source of the Assembly runtime that follows, onto the CPU, its microcodes and eventually onto the very NAND gates that make up the machine that runs the code. But even at this level, we'd be sizing up something that doesn't exist physically but is merely modeling (as closely as possible within the 0-5V range) a concept that exists in solely somebody's head. 

Why then should we attempt to find absolute size of code? Could we make do with a size that's relative to a known base below which we will not probe, but is sufficient for us to understand the size of whatever is built above it? Let's work it out.

In the formulas we've been writing till now, this would be:

		If <L,S,n>, <L',S',n'>, <L'',S'',n''>, ... <L*,S*,N*> are a set of languages such that 
		... L1  is implemented in L'
		... L2 is implemented in L'', and so forth till
		... L* is a base language that we choose to ignore the implementation of.
		
		if s is an operation in S, its size in terms of L' is:
		size(s)   = sum(Ki.size(S'i)) for i: 1 to n'
		          = A1.size(s'1) + A2.size(s'2) + ... + An'.size(s'n')
		           where Ai are constants as described in (28) above.
		
		Similarly, size of any operation in S' in terms of L'' is:
		size(s'1) = sum(Bj.size(s''j)) for j: 1 to n''
		          = B1.size(s''1) + B2.size(s''2) + ... + Bn''.size(s''n'')
		          where Bj are constants as described in (28) above.

		Thus expressing each S' in terms of L'',
		size(s)  = A1  . sum( Bj.size(s''j) for j: 1 to n'' ) +
		           A2  . sum( Bj.size(s''j) for j: 1 to n'' ) +
		            ... +
		           An' . sum( Bj.size(s''j) for j: 1 to n'' )
		         = A1.B1. size(s''1) + A2.B2.size(s''2) + ... + An'.Bn''.size(s''n'')

		If we carried this exercise all the way to L*, the operations in S can be expressed in terms of L* as:
		size(s)  = A1 B1 ... K*1.size(s*1) + A1 B1 ... K*2.size(s*2) + .... + A1 B1 ... K*n*.size(s*n)
		           where K*i is the set of constants at L* required to build an operation in S

		                                                                                 --(29)

By definition, L\* is a language that we chose not to break down anymore. At this asymptote, size has no further detailed meaning because all operations just happen. They do what they do without resorting to further delegation. As such, they can all be deemed to be of the same size; the only constraint being that the value chosen should not be zero, since that would nullify the sizes of all operations based on these operations in L\*. 

What number should we pick for this uniform size? Well, any number will do, but they would all be multiples of a "unit size" that we'd get if we picked one as the size. It makes sense, therefore, to set the sizes of the operations in L\* to 1. In formulas:

		size(s*i) = 1 for i: 1 to n*                                                     --(30)

Thus the size of operations in L in terms of L\* can be written as:

		size(s) = A1 B1 ... K*1. 1 + A2 B2 ... K*2. 1 + ... + A1 B1 ... K*n* . 1
		        =      C1          +       C2         + ... +      Cn*                   --(31)

... which is a "sum of parts" equation. So we have (for the most part) achieved what we set out to - define code size as a sum of sizes of the atomic operations that are used to build it.

More importantly, we have also established that:

* There is no absolute size; all size is relative to the "level of abstraction"
* We can pick an arbitrary level to be our "base" and attribute unit sizes to all atomic operations at that level
* Once we have a base, all sizes for code above it - its applications, so to speak - can be measured as sums of the sizes of the atomic operations.

So we're gravitating towards a 3-tier model of relative code size:

		app
		 |
		lang
		 |
		base


In BNF-ish definitions and formulas again:

		app      := program+       ... in potentially multiple languages
		program  := operation+     ... in one language
		language := operation+
		base     := language

		size(app)       = sum(size(program))
		size(program)   = sum(size(operation))
		size(operation) = size(program in base)  if language
		                = 1 unit wrt base        if base
		                                                                                 --(32)

Note that last bit: the unit no longer can be unadorned, we have to qualify it with "with ... as base" so that we always are comparing apples to apples.

Rewriting (31) thus, we have:

	size(s) = A1 . L1 . B1 + A2 . L2 . B2 . 1 + .... + An* . Ln* . Bn*
	   where
	     Ai = Application constants
	     Li = Language constants
	     Bi = Base constants = 1                                                         --(33)

<a name="back_up"></a>
Back up the rabbit hole...
--------------------------

### ... to SSI

So let's try backing up to where we left off with the SSI model. Depicting the programs that we wrote in that section in the 3 tier model we get:

	program 6      program 7     program 8
	   |              |              |
	   +--------------|--------------+
	                  |
	            SSI pseudo lang
	                  |
	                  ?

What do we choose as base for the SSI model? Since we explicitly stated it to be pseudo code, we could invent a base language if we wanted to, but we can also safely treat it as __its own base__. Now we can complete equation (27) with the size of operations using the result in (33): 

		size(if)                  = c + sum(b)                                           --(14) 
		size(loop)                = i + c + b + p + o                                    --(24)
		size(any other operation) = 1                                                    --(33)

Now we can work out the sizes of the programs in pseudo-language units:

TODO: FILL THIS TABLE OUT

| Program | SLOC | Size | Calculation | Comment|
|---------|------|------|-------------|--------|
| program 6 | 6 | 6 units|  |The same as SLOC for "linear" programs|
| program 7 | 7 | 6 sq. units| = 2+1+(1+1)+1  | Less than SLOC, but "wider"|
| program 8 | 4 | 5 sq. units| = 1+1+1+1+0+1  | "Wider" than SLOC and thus larger numerically |

Note that the asterisks are now gone.

### .... to `HelloWorld`

Now let's try backup all the way to where we started: `Hello World`. Since it's a higher level than the simple SSI pseudo language, we have at least two options for a base:

	  Hello world   Hello World
	      |             |
	    Java           Java
	      |             |
	     JVM           Java
	
The JVM is the obvious choice; it makes sense hierarchically and is the rightful base. However, if all we're doing is comparing Java programs, it might be easier to compare at an atomic Java statement level (similar to how we broke things down in that section above) instead of going down to the bytecodes that make up those statements.

TODO: FILL THIS TABLE OUT

| Component | Size in Java units| Size in bytecode units |
|--|--|--|
| Class | 1 | TBD |
| Method | 1 | TBD |
| Package import | 1 | TBD |
| function call | 1 | TBD |

Now we can calculate the size of the program and compare with SLOC:

| Program | SLOC | Size in Java units| Size in bytecode units |
|---------|------|------|----|
| program 6 | 5 | 1+1+3 = 5 units| TBD |

<a name="turing_unit"></a>
A new measure of code size
--------------------------

Now that we have a way to measure code size, its seems only right to give it a name so we can treat size with some specificity. Of course, this is a relative measure, so it always has to be qualified with "... in base b" or "... with respect to base b"; and it has to be prefixed with the dimension of the size - whether it is linear or square or higher; but it still needs a name.

As we went through the rabbit hole discussion, I didn't mention it, but the one true asymptotic machine in CS lore is the Turning Machine - that primordial representation of a computer. L\* could well be the Turing machine - not just in spirit but also in the fact that its operations are black boxes just as the states in a Turing machine. 

So what better name for code size than __Turing__? I give you therefore:

> __Turing__: the unit for size of code. It is dimensional and relative to a base. 
> Symbol: `T | b`
>         where b is a language that is used as the foundation

Here's an example of an acceptable way to use the Turing in written text: to describe code with linear size 15 with Java as the base you would write: `15T | Java` or `15T in Java` or `15 Java turings`.

Tying up some loose ends in the brave new world of Turing-sized code
--------------------------------------------------------------------

### We didnt size anything other than the `IF` and the `LOOP`. How do you know they're all sum-of-parts?

True; we didnt. However, it's not without accident that those are the two operations that require special treatment. As depicted in the SSI section, those are the two constructs that change the flow of code from linear to non-linear. More precisely, any construct that uses a `goto` of some sort would have to be treated as special. The `if` and the `loop` are the next level of abstraction that are universal enough that if we size them up, we can then treat any other construct using them as regular code blocks.

### Comparing code across languages

Let's reconsider some questions raised earlier:

1. How would we compare a Hello World written in Java vs one written in Ruby, for example? __Ans__: This is the real reason for the 3rd tier of the relative model: to compare programs written in different languages. So to compare a Hello World program written in Java vs one in Ruby, we have to reduce them both to a common base, say an x86 instruction set. 

		Java Hello World           Ruby Hello World
	    	   |                           |
	    	  Java                        Ruby
	     	  |                           |
	    	   +------------+--------------+
	    	                |
	        	          x86 PC   
Of course, This is hardly easy because the language runtimes are in between and isolating _just those parts of the runtime that this program uses_ is near impossible. However, it is possible to imagine a common conceptual machine, e.g., [the LLVM](TBD) that both run on and derive meaningful results that way. Now that we have a way of comparison that is independent of the source format, its conceiveable that we arrive on a "Standard Turing Machine" with a standard set of operations that will be used to measure all code. However, this is ripe for "subject to interpretation" issues to creep in.
2. If size is reduced to 1 at a base language, will languages become bereft of meaning? Is "Javaness" or "Ruby ness is purely from the structure and not meaning? __Ans__: Size is a gross metric. By explicitly setting all operations to have the same size at a chosen level of abstraction, we have chosen to ignore meaning for sizing purposes. So the operations don't loose their meaning, we're just ignoring them for sizing purposes. Of course, complex logic is likely to be larger, but that is as much of their "meaning" that Size will capture.
3. Can we use this model in reverse, i.e., to compare sizes of bases when implementing the same app? __Ans__: Yes, in one sense. If we built the same app in two different languages and bases, we could compare the bases in terms of fit for that app.

### Platform affordances

Earlier in this chapter we saw two examples of platform affordances: in Java we dont need to declare a `PrintStream` if we're using the default one, i.e, `System.out`; in Ruby we dont need a class or main method if we're using the default `Class` module that the run time wraps around scripts automatically. These are decidedly "base" functionalities that affect the calculation of size in the sense that counting them in or out could change the size dramatically. Couple of interesting threads lead from here:

1. The ease of development (aka programmer productivity) is usually expressed in terms of the size of the app layer. This is because the language and base are a given at that point. A language is verbose or not depending on how much it subsumes within itself to reduce the size of the app layer. So if it affords a easier app development style by "hiding" sensible defaults in the language layer, this is a good thing for productivity, but doesn't essentially reduce the overall size. In terms of size, Platform affordances would be no different from boilerplate code generated by an IDE, for example. However, some of it could be considered "dynamic size".
1. The "iceberg" nature of code: How much is visible and how much submerged? The size of the language+base represents the difficulty to move from one platform to another.

Tantalizing as these threads sound, I'll focus on finishing up the Code Size concept; so they will not be explored further in this chapter. They are good fodder for future chapters, however.

### The dimension of size

We made a natural progression from linear size to two-dimensional size through this chapter. The nature of software is that it could get to higher dimensions - we are limited only by our imagination when creating code to "make the marble run as complex as we want". Integrated circuits are a good approximation of how complex code can get in real life - ICs are literal representations of code paths and multiple 3-D layers are routinely stacked to build a single chip. In one sense, Alan Kay's representation of the Windows code as pages of text is not that far-fetched as a crude 3-D model of code that's sized using Turings.

There is also a natural similarity between code size and physical sizes when measured in Turings - length, area, volume and so forth. The only caveat is to compare sizes at the same power - linear with linear, squared with squared and so forth - as we have done in this chapter.

This is also where the graph analogy really comes into force. We can readily apply results from graph theory to analyze code size problems.


<a name="kinds_of_sizes"></a>
Disk vs Process Size and Static vs Dynamic Size
------------------------------------------------

As natural as the Turing may seem as a size measure, code size is always not a fixed value. Code has one size when its on disk, another when its in memory and potentially many more dynamic sizes as it runs. Let's write down some commonly used terms as definitions:

> **Disk/File Size**: The size of code when stored passively (aka "the stored program"). Usually expressed in bytes or its multiples.

> **Process Size**: The size of code when loaded up into memory and ready to execute. This is usually different from the Disk size because some persistence metadata is not required in the executable image, while some runtime metatdata might be. Also expressed in bytes or its multiples.

> **Static Size**: The size of code that does not change as it executes. Code written in _Static languages_ mostly have only this kind of size.

> **Dynamic Size**: The size of code (or part of code) that DOES change (or is created) as it executes. The majority of code written in _Dynamic languages_ usually have this kind of size, although Static Languages with dynamic capabilities have some code with dynamic size.

The size that we've been discussing till now is probably closest to the Static size, while counting size using SLOC is probably closest to the Disk/File Size. Can we use the Turing to talk about these different aspects of Code size universally? Lets give it a shot.

* Disk Size is the size of the code when it is stored as data - something that we have not considered seriously yet. When we do form an opinion, we should return back to review this type of size.
* Process Size essentially adds some platform dependencies and removes metadata stored in the persisted form. If we know the size of those operations, the Process size can also be expressed in Turings.
* Static size is what we've been measuring, so no additional comment there.
* Dynamic Size can be expressed as Static size plus the additional size added during execution. Since code could potentially be created and destroyed, we would be interested in the maximum size that the code could get to. As a formula, now:

		size(program with dynamic code) = size(program) + max(size(dynamic code))        --(34)

The key point to remember is to always compare two sizes of the same - disk size to disk size and so forth.

<a name="sizing_data"></a>
Sizing up data
--------------
TODO: MOVE TEXT BACK FROM 01_DATA_SIZE.MD ONCE ITS SHAPED UP.

<a name="engg_corner"></a>
Engineer's Corner
-----------------

Ok, how do we use Turing sizes in the real world?

For small programs like the ones above, counting operations is fine, but for any non-trivial codebase we cannot expect to get a true count of atomic statements without some medium-to-high complexity parsing of the source - something that might not be acceptable in all cases. If we instead took the shortcut of just considering a source language statement as an operation, we might be able to measure sizes quicker, if not accurately.

This simple approach is good because it is easily applicable (manually and with tools); and bad in that expressive languages can "pack a lot of wallop" into a single complicated statement (I'm looking at you, APL) which will not be represented truthfully in the size of the program. But it can be considered the next incremental step to counting SLOC - with the statement separator replacing the newlines.

The exact approach (i.e., per the theory above) is good in that it tends towards purity in measurement - code can be sized in terms of the atomic operations supported by the language itself and/or its runtime. It does, however, require non-trivial understanding/parsing of the source by human/tool to arrive at the exact size of code.

Should we pick one method over the other? The scientific mind suggests discarding the Simple for the Exact. The Simple approach, however, might be useful for "rough estimates". It could also be that the difference between sizes arrived at by the two methods are statistically close enough for a sufficiently large body of code that we might not want to go through the pain of calculating size exactly.

Let's see how this works in practice by testing it out on the Hello World program again. We need a rule to identify containers, in addition to the statement identifier, so let's use the following rules to parse source:

	{} = container
	;  = statement ie atomic operation                                                   --(34)

Using (34) and applying formulas from above to program 1, we get:

	By the Exact approach,
		size(program 1) = 5 T|Java

	By the Simple approach,
		size(program 1) = size(class) + size(main)
		                =      1      + size(main)
		Now,
		 size(main)     =      1      + size(statements)
		 size(stmts)    =      1 if using simple approach

		Thus,
		size(program1)  = 1 + 1 + 1 
		                = 3 T|Java

Doing the same exercise for all the programs we've written so far gives us:

<table cellpadding="1" border="1">
<tr align="middle" valign="top">
	<th align="left"> Program </th>
	<th> SLOC </th>
	<th> Size(Simple) </th>
	<th> Size(Exact) </th>
	<th> Comments </th>
</tr>
<tr align="right" valign="top">
	<td align="left"> Program 1: HelloWorld.java </td>
	<td> 5 </td>
	<td> 3 </td>
	<td> 5 </td>
	<td align="left"></td>
</tr>
<tr align="right" valign="top">
	<td align="left"> Program 2: HW.java with SOP split </td>
	<td> 7 </td>
	<td> 5 </td>
	<td> 6 </td>
	<td align="left"> 
		size(import) = 1. <br/>
		Exact size(line 1.1) = 2 because it's eventually equivalent to the first 2 lines in snippet 2.1 
	</td>
</tr>
<tr align="right" valign="top">
	<td align="left"> Program 3: HW.java with 2 SOP calls </td>
	<td> 6 </td>
	<td> 4 </td>
	<td> 8 or 6 ? <br/> Ans: 8</td>
	<td align="left"> 
		Should the two System.outs be expanded with duplication or not? <br/>
		If yes, each line has size 3; if duplicates are removed, the two lines have a combined size of 4<br/>
		Ans: Yes, line has size 8. While the 6T size is enticing it represents an optimization that we're not aware happens. So simpler to treat each source operatoin as standalone.
	</td>
</tr>
<tr align="right" valign="top">
	<td align="left"> Program 4: Hello World in Ruby </td>
	<td> 1 </td>
	<td> 1 </td>
	<td> 1 </td>
	<td align="left"> Is a Ruby/Python size 1 the same as a Java size 1? </td>
</tr>
<tr align="right" valign="top">
	<td align="left"> Program 5: HW.java with greet() </td>
	<td> 8 </td>
	<td> 5 </td>
	<td> 7 </td>
	<td align="left"> 
		size(greet)=1. <br/>
		size(SOP)=1 in simple and 3 in exact as before 
	</td>
</tr>
</table>

Ok, that was for the smallest possible programs. What if we did the same exercise for slightly larger programs?

TODO: COMPARE SIZES OF 2 PROBLEMS IN THE SAME LANGUAGE

TODO: COMPARE SIZES OF SAME PROBLEM IN 4 LANGUAGES - EITHER 99 BOTTLES OR FIZZBUZZ

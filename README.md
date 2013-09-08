Grand Unified Theory of Software
================================

GUTS is my attempt at creating a "natural" theory for software much like physics does for the real world. The big ideas are to:

- define the properties of software in terms of building blocks such as the atomic statment and datum;
- build up towards larger and more complex structures such as modules, components, applications and ecosystems; 
- model their structure as analogues of phsyical constructs and the behavior as dynamic systems.
- use these models to predict software stability, flexibility etc.

End goal
========

The output is (a hopefully useful) theory that can be used to answer questions like:


- Is this piece of software stable? Flexible? Brittle?
- Can I define how complex a system is based on its code?
- how can I use this to develop a plan to understand it?
- if I change X, what will happen to the software?
- How much change of X can the software take before it breaks?
- What is the cost of changing X?
- How did it reach its current state of stability/flexibility/brittleness?


Current Status
==============

Since this is a theory project, the meat of the project is documents describing it. There is some code that supports conversion of formats (markdown to html, for eg) and there will be code use to test the theory out in the future.

### Thoughts about GUTS

My current state of thought is captured in a Freemind Mindmap

This is available in two formats:

- A [Flash enabled one](http://vinodkd.github.com/guts/mmap/full/guts.html) that's closest to the Freemind experience.
- A [non-flash, clickable image map version](http://vinodkd.github.com/guts/mmap/basic/guts.html) that has all the content but is not as directly accessible as the previous one; but works on iPads and such like

### GUTS and GUTSE: A barcamp presentation

In 2012, I presented GUTS and the related-in-principle GUTSE at Barcamp Bangalore. The [presentation slides](https://github.com/vinodkd/bcb12) are available as expository material. That talk is important for two reasons:

* It contains more of the whys and details of GUTS
* The feedback I got during that session was what prompted me to "Pick one concept and expand on it thoughoughly" - leading directly to the book.

### GUTS - the book

GUTS - the Book is my attempt at delving deep into each of the metrics I proposed in the GUTS mindmap and try to work things out throughly. The book is WIP and the following DRAFT chapter(s) are available.

* [Chapter 1: Size](http://vinodkd.github.com/guts/book/01_size.html).


Milestones
==========
1. Define code Size for all levels upto application - WIP
2. Define Structural Stability for all levels upto application - TBD
3. Start writing the mindmap in book form - WIP


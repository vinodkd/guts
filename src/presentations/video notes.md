video notes

- how do you measure size of some code today? for eg, consider the hello world program
- <<count and say the loc>>
- does this give an accurate idea of the size?
- what if I write it all on one line? does that make it smaller?
- i'd argue that the real size is the number of statements in the code, for eg:
- <<count and say the no. of stmts>>
- now consider writing the same in another language, eg ruby
- <<count and say the no of stmts>>
- now we can really compare sizes
- so what would be a much more natural way of measuring size?
- looks like statments are one idea
- of course, there're lot of ambigiuities, esp when compound statments are written, like so:
- <<show example of java ambiguity>>
- so lets say we measure after breaking it down to the smallest piece of valid code that the language's syntax allows,eg:
- <<show smallest set of java stmts with local vars>>
- now it can no longer be broken down further and we can truly say that hte size is x in java and y in ruby, for example
- what have we gained, though? a measure of size that's admittedly more difficult to calculate, but more accurate and treats code as code.
- but wait, we still have to consider the container that code lives in - the class and method in java's case. what about them? do they have a size?
- it would be fair to assume that they contribute *some* size because its required context
- so let's assume some size x and calculate size, which is code size +x
- ...
- so we arrive at the conclusion that the size of a large enough program is proportional to the sum of the structures that its made of and less on the sizes of the atomic instructions that make up that language. therefore at this level we can assume the atomic sizes to be unit (and indistinguishable separately - from a size pov) to get the "true" size of code.
- I call this unit turing :)

- what about data?
- lets do a similar exercise with data
- now we already have 

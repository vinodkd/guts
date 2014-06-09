
For any language L with n unique Simple operations (including containers) S1, S2, ... Sn (hereafter abbreviated to as `<L,S,n>`), the size of any program P in L is:

    size(P) = K1.size(S1) + K2.size(S2) + ... + Kn.size(Sn)    
        = sum(Ki.size(Si)) for i: 1 to n

If a language `<L,S,n>` is implemented in terms of another language `<L',S',m>`, each of L's unique simple operations S1...Sn can be themselves expressed as programs in L'. Assuming the simple operations in L' are s1,s2,....sm, we get:

        size(S1) = sum(Kj.size(sj)) for j: 1 to m
|||ly,  

		size(S2) = sum(Kj.size(sj)) for j: 1 to m

But L' itself is most probably implemented in terms of another language, say L''.


    If <L,S,n>, <L',S',n'>, <L'',S'',n''>, ... <L*,S*,N*> are a set of languages such that 
    ... L  is implemented in L'
    ... L' is implemented in L'', and so forth till
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

If

	size(s*i) = 1 for i: 1 to n*

Then,

	size(s) = A1 B1 ... K*1. 1 + A2 B2 ... K*2. 1 + ... + A1 B1 ... K*n* . 1
	            =      C1          +       C2         + ... +      Cn*


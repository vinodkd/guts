This document contains the source material for the paper to be submitted for Splash/Onward by Mar 25 2014.

Outline of paper
================

introduction: 
	should give an overview of what & why, summarize the rest of the sections
literature survey
	should list out precedents
guts
	- the vision: writeup summarizing the mindmap
	- intended purpose
	- limits
		- subjectivity
		- Shroud number
	- lead in to gutse
gutse
	describe how this aligns with guts
	what it adds to the mix
	what it doesnt have
elaboration of guts using software size
	- code size
	- data size
	- interim results
	- implementation
future directions
	- 

Abstract
========
Computer Science has various theories that explain parts of its many areas of focus, but not a single unifying one. This paper introduces the notion of a Unified Theory for Software that is natural and can be used by practitioners. It then attempts to expand on the notion and define it better by applying it to one specific attribute of software - its size.
The Theory (or more accurately, Model, since it is yet unproven) is presented as a set of axioms and derivations. The axioms are about Computer Science as a branch of knowledge; Software Development as its practice; human as the engines of this practice and their inherent limitations; and finally the nature of the artifacts produced – the software – themselves. These are then used to create models of software similar to the ones of the real world in physics. From these models and their axiomatic behavior, common attributes of software – such as its size - are recast in the light of the new model as new (and presumably more natural) measures.
Validation, which is pending, will be in two ways: Utilitarian, where practitioners find the new approach (or more specifically, the new measures) useful and accurate for daily use; and Absolute, where the result of the research is a sound theory that stands by itself.
The current goals of this research are to improve software Comprehension and Estimation; and they have been chosen to provide specificity to the research. When completed, however, the Theory is envisioned to have sufficient expressive power as to cover all use of the term "Software", from throw away scripts to OS kernel code and from inception to sunset.
While the research is not complete yet, this paper does present some interim results. Software size measured in the new approach has been found to be more useful for small, single function programs than conventional measures.

Introduction
=============
The quest for unifying concepts is central to the scientific method, as is evident abundantly in the natural sciences. The realm of Computer “Science” however, has numerous models that explain parts of it, but no single unifying one. For example: .xxxxxxx. In the language of X’s theory, Computer Science could be considered to still be in the Pre-Science era, where various theories compete (or co-exist) and no single vision prevails.

This research started as a single thought: “Wouldn’t it be great if there were a Theory of software like there is a Theory of Physics? We already use a lot of physical metaphors when we build software, it must be possible to create real definitions and make the metaphors concrete.” From there stemmed the idea of a "Grand Unified Theory of Software" (GUTS henceforth) - the topic of this research. Some of the initial concepts were presented at [BC2011]; and feedback received there prompted the deep dive that is the bulk of this paper: 

* Expressing software size in terms of this new theory, and 
* Evaluating its fit:
	* for the stated purpose of measuring software size, and
	* as an exemplar for the theory as a whole.

One quick note about use of the terms "Grand" and "Theory": neither is accurately applicable to the current state of this research. At the time when I started this exploration, however,  it was entirely a personal thought experiment and the word "Grand" was used more as a bow to the Grand Unified Theory of Physics. At the current state, its usage is partly for historical reasons (publicly available artifacts use the term freely) and partly to hint at the breadth that is the aspirational goal of this research. As for "Theory", I admit that "Model" would be a more apt name for the current state - and potentially the end state as well. I intend to correct the terminology when an appropriate resolution has been reached either way.

ADD NOTE ABOUT FOCUS BEING NOT JUST MEASUREMENT, BUT OVERALL THEORY

The rest of this paper is organized thus: Section 2 attempts to summarize a part of the existing literature on the topic. Section 4 is the model itself, followed by Section 5 - a quick comparison to GUTSE - an earlier attempt at a unified theory that has a lot of similarities to the concepts in GUTS. Section 6 then elaborates on applying GUTS to one particular attribute of software - its size - and draws conclusions on the applicability of the theory.  Section 7 is a critique of research to date and how it can be validated. Finally Section 7 lists future directions for this research.

Literature Survey
====================

- Theoretical models angle.
- Measurement angle.

The model proposed
======================
Software is a set of artifacts generated (mostly) by humans. 

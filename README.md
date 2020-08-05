# **Parsly** ![](parsley.png)  
### - a parser implemented in Blockly

# Hello!
It is our pleasure to inform you that you have been personally picked out to help the rising star of the enterprise world, _***BusinessCorp Ltd***_, 
in their effort to build and sell a real parser for JSON-like objects.
However, due to temporary technological embarrassment, their toolset has been reduced to a browser of your own choice, and a fork of Google's quite barebones Blockly demo.

The parser still has to be finished though, as they need it in production as soon as possible.
So grab your trusty mouse, find a place with a lot of space, and get to work.

## Current features
Parsly already supports parsing multiple nice types, such as
  - Natural numbers (`0`, `1`, `2`, ...)
  - Positive decimals (`1.1`, `3.14`, `1421.171`, ...)
  - Basic ASCII Strings of upper- and lowercase letters from `a` to `z`:  
  (`"hi how are you"`, `"soup for one"`)
  - The boolean values `true` and `false`

## Features to add
This feature set is of course not nearly enough for a spin-out of _***BusinessCorp Ltd***_'s stature.
Therefore, you are hereby asked to extend Parsly in the following ways:
  1. Extend the integer parser, so it parses negative integers as well as zero and the positive ones  

  2. Extend the decimal parser, so it parses negative decimals just as well as the positive ones  

But what the director really wants is the addition of the following feature:

  3. Parsing typed arrays. A typed array in this context is an array where all its elements have the same type;
  The arrays `[true, true, false]`, and `["hello", "world"]` are valid typed arrays, while `[1, "two", 3.14]` is not.  
  
Furthermore, you can implement dictionaries as described below. However, this is completely optional, and you should only do it for your own amusement and bragging points.

  4. Parsing simple key-value dictionaries. Although all dictionary keys must be strings, the values within can have any of the types mentioned in this briefing so far.
  Furthermore, the values does not have to have the same types throughout the dictionary. 
  Here is a well-formed dictionary:
```
  {
    "myInteger": 6969,
    "myDecimal": 1.23,
    "myList": ["hey", "this", "is", "fun"]
  }
```
 
#### Good to know:
* Save often
* You can add comments to your code by right-clicking any block and then select `Add Comment`
* The Blockly blocks are transpiled into JavaScript source code.
This means that the Blockly program is fundamentally JavaScript, and that JavaScript semantics and limitations are in effect.
* If you get in trouble, paste the generated js-code into your browser's console, and try debugging it with your browser's debugger.
* There are a few places wherein Parsly makes use of a global variable; mainly with the variable `mutableString` and the global `objectBuffer`
* In JavaScript, String, Number and Boolean function parameters are passed by value, while Objects are passed by reference. This is why the `StringObject` is used to keep track of the input string's state in the various parsers.  
NB: Blockly's generator overrides JavaScript's usual equality comparison, so Blockly lists- and dictionaries are compared by value and not by reference, so don't worry about handling this.
* Be careful with the variables. Even though you can copy/paste variable blocks with the same variable name back and forth between functions,
they might not be tied to the scopes that you think they are. When in doubt, delete the variable block, right click the function that has the variable you need, and create a fresh one.

Expanding Parsly is not necessarily a simple task. The features you have been asked to build comes with edge cases and annoying details.
However, it should be solvable by employing and expanding on the techniques that already used in the handout code.  
And even if you don't complete it perfectly, we are still interested in reading your submission!  
The case should be solvable in four or five hours time, but it might be beneficial to take a break once in a while you're working out a solution, instead of trying to solve it in one sitting.

### Your work:
* Implement at least three of the features mentioned above.
* Show that your implementation works by adding ample tests, both positive and negative, in the main function.
The code already contains some tests. You can run them by opening your browser's console, and then clicking the red arrow in the top right corner.
You can enable these by right-clicking the blocks and selecting `Enable Block`.
* Start by implementing basic cases before you try your hand at recursive cases (such as arrays of arrays of integers, or dictionaries containing dictionaries)

### Getting started
1. Clone and unpack [this repository](https://github.com/leoilab/parsly-case) somewhere on your computer.
2. Open the [Parsly Case](parsly.html) in your browser.
3. Paste the contents of [parsly-base.xml](parsly-base.xml) into the XML tab of the application
4. To download your current workspace, click the save button in the upper right corner.

## Handing in your solution
When you are satisfied with your solution, download and send your workspace XML to [mikkel.storgaard@leoilab.com](mailto:mikkel.storgaard@leoilab.com).  
We will then take a look at it and get back to you shortly thereafter!

### _Have fun!_

PS: If you want to know more, why not check out this [job listing?](https://leoinnovationlab.com/job-vacancies-student-developer/)  

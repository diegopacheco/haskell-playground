# haskell-playground

Hands-on Haskell POCs, from the first lines of the language to monads, STM and web servers. Every project is small, runs on its own and focuses on one idea.

## 🌱 Basics

The first steps with Haskell: expressions, conditionals and simple recursion.
Small programs that show how little code a pure function needs.

* [haskell-4-fun](haskell-4-fun/) - sum, map, filter, folds, head, tail and factorial in one file
* [learnyouahaskell](learnyouahaskell/) - Exercises from Learn You a Haskell, from lists to monads and zippers
* [if-basics](if-basics/) - if, then and else as expressions
* [fizz-buzz](fizz-buzz/) - FizzBuzz with guards
* [factorial-fun](factorial-fun/) - Factorial with recursion
* [is-prime-fun](is-prime-fun/) - Checks if a number is prime
* [palindrome-fun](palindrome-fun/) - Checks if a word is a palindrome
* [times-table](times-table/) - Prints a multiplication table

## 🧩 Functions

Functions are values: they can be curried, composed and passed around.
Folds and maps replace almost every loop.

* [curried](curried/) - Curried functions and partial application
* [lambdas](lambdas/) - Anonymous functions with lambdas
* [high-order-functions](high-order-functions/) - Functions that take and return functions
* [function-application-dollar](function-application-dollar/) - The $ operator to drop parentheses
* [function-composition](function-composition/) - Composing functions with the . operator
* [infix-sufix-fun](infix-sufix-fun/) - Calling functions infix and prefix
* [maps-and-filters](maps-and-filters/) - map and filter over lists
* [my-map](my-map/) - map written from scratch with recursion
* [foldl](foldl/) - Left folds to reduce a list
* [lots-of-functions-fp](lots-of-functions-fp/) - maximum, reverse, product, filter, head and last rebuilt with folds

## 📋 Lists & Pattern Matching

Lists are the core data structure in Haskell.
Pattern matching takes them apart and list comprehensions build them up.

* [lists-fun](lists-fun/) - Common list functions
* [first-second-rest-deconstruct-list](first-second-rest-deconstruct-list/) - Deconstructing a list into first, second and rest
* [pattern-matcher-fun](pattern-matcher-fun/) - Pattern matching on values and structures
* [range-pattern-matcher](range-pattern-matcher/) - Ranges combined with pattern matching
* [for-comprehensions-fun](for-comprehensions-fun/) - List comprehensions with generators and filters
* [zip-it-zipty-zip](zip-it-zipty-zip/) - zip and zipWith to combine lists

## 🏷️ Types & Type Classes

Algebraic data types model the domain and the compiler checks every case.
Type classes add shared behavior, like interfaces without inheritance.

* [data-classes-fun](data-classes-fun/) - Shape and Point data types
* [map-typeclass-fun](map-typeclass-fun/) - Mapping value constructors over lists
* [records](records/) - Record syntax with named fields
* [records-fun](records-fun/) - More records, field access and updates
* [type-parameters-fun](type-parameters-fun/) - Types with type parameters
* [type-synonyms-fun](type-synonyms-fun/) - Type synonyms for readable signatures
* [my-own-type-typeclasses](my-own-type-typeclasses/) - Custom types with custom type classes
* [type-class-102-implementing](type-class-102-implementing/) - Implementing Eq and other instances by hand
* [type-class-functor-fun](type-class-functor-fun/) - Writing a Functor instance
* [deriving-instances-fun](deriving-instances-fun/) - Deriving Show, Eq, Ord and friends
* [deriving-instances-bounded-fun](deriving-instances-bounded-fun/) - Deriving Bounded and Enum
* [call-me-maybe](call-me-maybe/) - Maybe written from scratch
* [maybesafe](maybesafe/) - Safe functions that return Maybe instead of crashing
* [phantomtypes](phantomtypes/) - Phantom types to catch mistakes at compile time
* [simpledsl](simpledsl/) - A small expression DSL with an evaluator

## 🔗 Functors, Applicatives & Monads

Abstractions that let effects and context flow through pure code.
Monoids combine values, monads chain computations.

* [functor-applicative-fun](functor-applicative-fun/) - fmap, pure and <*>
* [functor-redux-dot](functor-redux-dot/) - fmap on functions is function composition
* [monoids](monoids/) - Monoid instances and mconcat
* [writter-monoid](writter-monoid/) - Writer monad to log along a computation
* [monads](monads/) - Maybe and list monads with do notation
* [monads-reader-instances](monads-reader-instances/) - Reader monad to share an environment
* [continuation](continuation/) - Continuation monad with callCC
* [arrows](arrows/) - Arrows and proc notation

## 📚 Standard Library Modules

Modules from base and friends that show up in almost every program.

* [data-char-module-fun](data-char-module-fun/) - Data.Char
* [data-list-module-fun](data-list-module-fun/) - Data.List
* [data-map-module-fun](data-map-module-fun/) - Data.Map
* [data-set-module-fun](data-set-module-fun/) - Data.Set
* [byte-strings-fun](byte-strings-fun/) - Strict and lazy ByteStrings
* [random-fun](random-fun/) - System.Random generators
* [my-module-fun](my-module-fun/) - Writing and exporting a Geometry module

## 💻 IO & Exceptions

IO keeps side effects apart from pure code.
Exceptions handle what can go wrong at runtime.

* [simple-io](simple-io/) - Reading and printing with IO
* [io-mode-fun](io-mode-fun/) - Opening files with IOMode
* [read-file-fun](read-file-fun/) - Reading a file
* [command-line-args](command-line-args/) - Reading command line arguments
* [capslocker](capslocker/) - Uppercases everything from stdin
* [io-forever-with-monads](io-forever-with-monads/) - Endless input loop with forever
* [io-never-ending-main](io-never-ending-main/) - A main that calls itself forever
* [exceptions](exceptions/) - Catching DivideByZero with tryJust
* [throw-exception](throw-exception/) - Custom exceptions with throw

## 🧮 Algorithms & Data Structures

Classic algorithms and data structures written the functional way.

* [quicksort](quicksort/) - Quicksort in a few lines
* [bin-search-fun](bin-search-fun/) - Binary search
* [knapsack-fun](knapsack-fun/) - 0/1 knapsack with dynamic programming on Data.Array
* [reverse-polish-notation](reverse-polish-notation/) - Reverse Polish Notation calculator
* [reverse-binary-tree-fun](reverse-binary-tree-fun/) - Inverting a binary tree
* [datastructures-stack](datastructures-stack/) - A stack data structure
* [zippers-fun](zippers-fun/) - List zippers to walk forward and back

## ⚡ Concurrency & Performance

Software transactional memory makes shared state safe across threads.

* [stm](stm/) - 8 threads bumping one TVar with STM
* [bench](bench/) - Timing an IO action with Data.Time

## 🌐 Web & Apps

Small programs that talk to the network or keep state on disk.

* [scotty-fun](scotty-fun/) - Web server with Scotty
* [httpclient](httpclient/) - HTTP client calls
* [todo-app](todo-app/) - Todo list stored in a file, with add, view and remove
* [todo-cli-app](todo-cli-app/) - Todo list as a command line app

## ✅ Testing

Unit tests with HUnit, standalone and wired into cabal.

* [hunit-fun](hunit-fun/) - HUnit test cases and assertions
* [hunit-cabal-simple](hunit-cabal-simple/) - HUnit test suite running with cabal test

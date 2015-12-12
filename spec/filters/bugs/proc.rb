opal_filter "Proc" do
  fails "Module#remove_method accepts multiple arguments"
  fails "Module#undef_method requires multiple arguments"
  fails "Proc as an implicit block pass argument remains the same object if re-vivified by the target method"
  fails "Proc#=== on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on excess arguments when self is a lambda"
  fails "Proc#=== on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on missing arguments when self is a lambda"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (*) { }\n    @b = -> (*a) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (**k, &l) { }\n    @b= -> (*a, **k) { }\n    @c = ->(a: 1, b: 2, **k) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (*a, b) { }\n    @b = -> (*a, b, c) { }\n    @c = -> (*a, b, c, d) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a, *) { }\n    @b = -> (a, *b) { }\n    @c = -> (a, b, *c) { }\n    @d = -> (a, b, c, *d) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a, *b, c) { }\n    @b = -> (a, b, *c, d, e) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a, b=1) { }\n    @b = -> (a, b, c=1, d=2) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a, b=1, *c, d, e:, f: 2, **k, &l) { }\n    @b = -> (a, b=1, *c, d:, e:, f: 2, **k, &l) { }\n    @c = -> (a=0, b=1, *c, d, e:, f: 2, **k, &l) { }\n    @d = -> (a=0, b=1, *c, d:, e:, f: 2, **k, &l) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a, b=1, c=2, *d, e, f) { }\n    @b = -> (a, b, c=1, *d, e, f, g) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a: 1) { }\n    @b = -> (a: 1, b: 2) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a=1) { }\n    @b = -> (a=1, b=2) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a=1, *b) { }\n    @b = -> (a=1, b=2, *c) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a=1, *b, c:, d: 2, **k, &l) { }"
  fails "Proc#arity for instances created with -> () { } returns negative values for definition \n    @a = -> (a=1, b: 2) { }\n    @b = -> (*a, b: 1) { }\n    @c = -> (a=1, b: 2) { }\n    @d = -> (a=1, *b, c: 2, &l) { }"
  fails "Proc#arity for instances created with -> () { } returns positive values for definition \n    @a = -> ((a, (*b, c))) { }\n    @b = -> (a, (*b, c), d, (*e), (*)) { }"
  fails "Proc#arity for instances created with -> () { } returns positive values for definition \n    @a = -> (a, b, c:, d: 1) { }\n    @b = -> (a, b, c:, d: 1, **k, &l) { }"
  fails "Proc#arity for instances created with -> () { } returns positive values for definition \n    @a = -> (a, b:) { }\n    @b = -> (a, b:, &l) { }"
  fails "Proc#arity for instances created with -> () { } returns positive values for definition \n    @a = -> (a:) { }\n    @b = -> (a:, b:) { }\n    @c = -> (a: 1, b:, c:, d: 2) { }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |(a, (*b, c)), d=1| }\n    @b = lambda { |a, (*b, c), d, (*e), (*), **k| }\n    @c = lambda { |a, (b, c), *, d:, e: 2, **| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |**k, &l| }\n    @b = lambda { |*a, **k| }\n    @c = lambda { |a: 1, b: 2, **k| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |*a, b| }\n    @b = lambda { |*a, b, c| }\n    @c = lambda { |*a, b, c, d| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |*| }\n    @b = lambda { |*a| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a, *b, c| }\n    @b = lambda { |a, b, *c, d, e| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a, *| }\n    @b = lambda { |a, *b| }\n    @c = lambda { |a, b, *c| }\n    @d = lambda { |a, b, c, *d| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a, b=1, *c, d, e:, f: 2, **k, &l| }\n    @b = lambda { |a, b=1, *c, d:, e:, f: 2, **k, &l| }\n    @c = lambda { |a=0, b=1, *c, d, e:, f: 2, **k, &l| }\n    @d = lambda { |a=0, b=1, *c, d:, e:, f: 2, **k, &l| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a, b=1, c=2, *d, e, f| }\n    @b = lambda { |a, b, c=1, *d, e, f, g| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a, b=1| }\n    @b = lambda { |a, b, c=1, d=2| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a: 1| }\n    @b = lambda { |a: 1, b: 2| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a=1, *b, c:, d: 2, **k, &l| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a=1, *b| }\n    @b = lambda { |a=1, b=2, *c| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a=1, b: 2| }\n    @b = lambda { |*a, b: 1| }\n    @c = lambda { |a=1, b: 2| }\n    @d = lambda { |a=1, *b, c: 2, &l| }"
  fails "Proc#arity for instances created with lambda { || } returns negative values for definition \n    @a = lambda { |a=1| }\n    @b = lambda { |a=1, b=2| }"
  fails "Proc#arity for instances created with lambda { || } returns positive values for definition \n    @a = lambda { |a, b, c:, d: 1| }\n    @b = lambda { |a, b, c:, d: 1, **k, &l| }"
  fails "Proc#arity for instances created with lambda { || } returns positive values for definition \n    @a = lambda { |a, b:| }\n    @b = lambda { |a, b:, &l| }"
  fails "Proc#arity for instances created with lambda { || } returns positive values for definition \n    @a = lambda { |a:| }\n    @b = lambda { |a:, b:| }\n    @c = lambda { |a: 1, b:, c:, d: 2| }"
  fails "Proc#binding returns a Binding instance"
  fails "Proc#binding returns the binding associated with self"
  fails "Proc#call on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on excess arguments when self is a lambda"
  fails "Proc#call on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on missing arguments when self is a lambda"
  fails "Proc#curry with arity argument returns Procs with arities of -1 regardless of the value of _arity_"
  fails "Proc#inspect for a proc created with UnboundMethod#to_proc returns a description including '(lambda)' and optionally including file and line number"
  fails "Proc#inspect for a proc created with lambda returns a description including '(lambda)' and optionally including file and line number"
  fails "Proc#lambda? is preserved when passing a Proc with & to the lambda keyword"
  fails "Proc#lambda? is preserved when passing a Proc with & to the proc keyword"
  fails "Proc#source_location returns an Array"
  fails "Proc#source_location returns the first line of a multi-line proc (i.e. the line containing 'proc do')"
  fails "Proc#source_location returns the location of the proc's body; not necessarily the proc itself"
  fails "Proc#source_location sets the first value to the path of the file in which the proc was defined"
  fails "Proc#source_location sets the last value to a Fixnum representing the line on which the proc was defined"
  fails "Proc#source_location works even if the proc was created on the same line"
  fails "Proc#to_s for a proc created with UnboundMethod#to_proc returns a description including '(lambda)' and optionally including file and line number"
  fails "Proc#to_s for a proc created with lambda returns a description including '(lambda)' and optionally including file and line number"
  fails "Proc#yield on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on excess arguments when self is a lambda"
  fails "Proc#yield on a Proc created with Kernel#lambda or Kernel#proc raises an ArgumentError on missing arguments when self is a lambda"
  fails "Proc.allocate raises a TypeError"
  fails "Proc.new with a block argument called indirectly from a subclass returns the passed proc created from a block"
  fails "Proc.new with a block argument called indirectly from a subclass returns the passed proc created from a method"
  fails "Proc.new with a block argument called indirectly from a subclass returns the passed proc created from a symbol"
  fails "Proc.new with an associated block called on a subclass of Proc returns an instance of the subclass"
  fails "Proc.new with an associated block called on a subclass of Proc that does not 'super' in 'initialize' still constructs a functional proc"
  fails "Proc.new with an associated block called on a subclass of Proc using a reified block parameter returns an instance of the subclass"
  fails "Proc.new with an associated block calls initialize on the Proc object"
  fails "Proc.new with an associated block raises a LocalJumpError when context of the block no longer exists"
  fails "Proc.new with an associated block returns a new Proc instance from the block passed to the containing method"
  fails "Proc.new with an associated block returns a subclass of Proc"
  fails "Proc.new without a block uses the implicit block from an enclosing method"
end

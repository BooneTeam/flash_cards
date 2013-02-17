class CardsController < ApplicationController
    
    

    def wrong
  end


  def start
  	@symbols = { 
    "alias" => "duplicate method name for a given method. The original method continues to be accessible", 
    "and" => "puts Hello and Goodbye
      the subexpression puts Hello is executed first, and returns nil. The whole expression thus reduces to:
      nil and Goodbye",
    "begin" => "Together with end, delimits what is commonly called a ____ block (to distinguish it from the Proc type of code block). A _____ block allows the use of while and until in modifier position with multi-line statements:", 
    "break" => "Causes unconditional termination of a code block or while or until block, with control transfered to the line after the block. If given an argument, returns that argument as the value of the terminated block.",
    "case" => "consists of an optional condition, which is in the position of an argument to ___, and zero or more when clauses. The first when clause to match the condition (or to evaluate to Boolean truth, if the condition is null) wins, and its code stanza is executed. The value of the case statement is the value of the successful when clause, or nil if there is no such clause.
          A ____ statement can end with an else clause. Each when statement can have multiple candidate values, separated by commas.",
    "class" => "Takes either a constant name or an expression of the form << object. In the latter case, opens a definition block for the singleton class of object.
          ____ may be opened more than once, and methods and constants added during those subsequent openings. ____ blocks have their own local scope; local variables in scope already are not visible inside the block, and variables created inside the block do not survive the block.",
    "def" => "Paired with a terminating end, constitutes a method definition. Starts a new local scope; local variables in existence when the ___ block is entered are not in scope in the block, and local variables created in the block do not survive beyond the block.",
    "defined?" => "expression tests whether or not expression refers to anything recognizable (literal object, local variable that has been initialized, method name visible from the current scope, etc.). The return value is nil if the expression cannot be resolved. Otherwise, the return value provides information about the expression.",
    "do" => "Paired with end, can delimit a code block:
      array.each ___ |element|  
      puts element * 10
      end
      In this context, ____/end is equivalent to curly braces, except that curly braces have higher precedence. In this example:",
    "else"  => "The ____ keyword denotes a final conditional branch. It appears in connection with if, unless, and case, and rescue. (In the case of rescue, the else branch is executed if no exception is raised.) The else clause is always the last branch in the entire statement, except in the case of rescue where it can be followed by an ensure clause.",
    "elsif" => "Introduces a branch in a conditional (if or unless) statement. Such a statement can contain any number of elsif branches, including zero",
    "END" => "Designates, via code block, code to be executed just prior to program termination.",
    "end" => "Marks the end of a while, until, begin, if, def, class, or other keyword-based, block-based construct.",
    "ensure" => "Marks the final, optional clause of a begin/end block, generally in cases where the block also contains a rescue clause. The code in the _______ clause is guaranteed to be executed, whether control flows to the rescue block or not.",
    "false" => "alse denotes a special object, the sole instance of FalseClass. false and nil are the only objects that evaluate to Boolean falsehood in Ruby (informally, that cause an if condition to fail.)",
    "for" => "A loop constructor, used with in",
    "if" => "Rubys basic conditional statement constructor. ____ evaluates its argument and branches on the result. Additional branches can be added to an ___ statement with else and elsif.",
    "in" => "used in for ie: for x __ do ...",
    "module" => "Takes a constant (the name of the _____) as its argument. The definition block starts a new local scope; existing variables are not visible inside the block, and local variables created in the block do not survive the end of the block. Inside the _______ definition, self is set to the _____ object itself.",
    "next" => "Bumps an iterator, or a while or until block,to the next iteration, unconditionally and without executing whatever may remain of the block.",
    "nil" => "A special non-object. ____ is, in fact, an object (the sole instance of NilClass), but connotes absence and indeterminacy. ____ and false are the only two objects in Ruby that have Boolean falsehood (informally, that cause an if condition to fail).",
    "not" => "Boolean negation. similar to !",
    "or" => "puts Hi or Bye is interpreted as (puts Hi) or Bye. Since puts Hi reduces to nil, the whole expression reduces to nil or Bye which evaluates to Bye. (The side-effect printing of Hi does take place.)",
    "redo" => "Causes unconditional re-execution of a code block, with the same parameter bindings as the current execution.",
    "rescue" => "Designates an exception-handling clause. Can occur either inside a begin<code>/<code>end block, inside a method definition (which implies begin), or in modifier position (at the end of a statement).",
    "retry" => "Inside a _____ clause, ____ causes Ruby to return to the top of the enclosing code (the begin keyword, or top of method or block) and try executing the code again",
    "require" => "use a file in the ruby load path",
    "require_relative" => "use a file in the same directory",
    "return" => "Inside a method definition, executes the ensure clause, if present, and then returns control to the context of the method call. Takes an optional argument (defaulting to nil), which serves as the return value of the method. Multiple values in argument position will be returned in an array",
    "self" => "____ is the current object and the default receiver of messages (method calls) for which no explicit receiver is specified. Which object plays the role of self depends on the context.",
    "super" => "Called from a method, searches along the method lookup path (the classes and modules available to the current object) for the next method of the same name as the one being executed. Such method, if present, may be defined in the superclass of the objects class, but may also be defined in the superclasss superclass or any class on the upward path, as well as any module mixed in to any of those classes.",
    "then" => "Optional component of conditional statements (if, unless, when). Never mandatory, but allows for one-line conditionals without semi-colons. The following two statements are equivalent",
    "true" => "The sole instance of the special class TrueClass. true encapsulates Boolean truth; however, <emph>all</emph> objects in Ruby are true in the Boolean sense (informally, they cause an if test to succeed), with the exceptions of false and nil.",
    "undef" => "____ a given method, for the class or module in which its called. If the method is defined higher up in the lookup path (such as by a superclass), it can still be called by instances classes higher up.",
    "unless" => "The negative equivalent of if.",
    "until" => "The inverse of while: executes code until a given condition is true, i.e., while it is not true. The semantics are the same as those of while; see while.",
    "when" => "used in with \"case\"",
    "while" => " takes a condition argument, and executes the code that follows (up to a matching end delimiter) _____ the condition is true.",
    "yield" => "Called from inside a method body, _____ control to the code block (if any) supplied as part of the method call. If no code block has been supplied, calling ____ raises an exception.
          _____ can take an argument; any values thus _____ed are bound to the block's parameters. The value of a call to _____ is the value of the executed code block."
      }
    @random = []
    @random2 = []
      rando = @symbols.sort_by {rand}
      rando = rando.each { |k,v|  @random << k and @random2 << v}
      @sym = @random2[0]
      @answer = @random[0]
      @sym2 = @random[0..10].sort_by {rand}
  end


@@ruby_functs_count = 0
  def ruby_functs
    @symbols = { 
      "abort" => "Terminates program. If an exception is raised (i.e., $! isn't nil), its error message is displayed.",
      "Array( obj)" => "Returns obj after converting it to an array using to_ary or to_a.",
      "at_exit {...}" => "Registers a block for execution when the program exits. Similar to END statement, but END statement registers the block only once.",
"autoload( classname, file)" =>
"Registers a class classname to be loaded from file the first time it's used. classname may be a string or a symbol.",
"binding" =>
"Returns the current variable and method bindings. The Binding object that is returned may be passed to the eval method as its second argument.",
"block_given?" =>
"Returns true if the method was called with a block.",
"callcc {| c|...}" =>
"Passes a Continuation object c to the block and executes the block. callcc can be used for global exit or loop construct.",
"caller([ n])" =>
"Returns the current execution stack in an array of the strings in the form file:line. If n is specified, returns stack entries from nth level on down.",
"catch( tag) {...}" =>
"Catches a nonlocal exit by a throw called during the execution of its block.",
"chomp([ rs=$/])" =>
"Returns the value of variable $_ with the ending newline removed, assigning the result back to $_. The value of the newline string can be specified with rs.",
"chomp!([ rs=$/])" =>
"Removes newline from $_, modifying the string in place.",
"chp" =>
"Returns the value of $_ with its last character (one byte) removed, assigning the result back to $_.",
"chop!" =>
"Removes the last character from $_, modifying the string in place.",
"eval( str[, scope[, file, line]])" =>
"Executes str as Ruby code. The binding in which to perform the evaluation may be specified with scope. The filename and line number of the code to be compiled may be specified using file and line.",
"exec( cmd[, arg...])" =>
"Replaces the current process by running the command cmd. If multiple arguments are specified, the command is executed with no shell expansion.",
"exit([ result=0])" =>
"Exits program, with result as the status code returned.",
"exit!([ result=0])" =>
"Kills the program bypassing exit handling such as ensure, etc.",
"fail(...)" =>
"See raise(...)",
"Float( obj)" =>
"Returns obj after converting it to a float. Numeric objects are converted directly; nil is converted to 0.0; strings are converted considering 0x, 0b radix prefix. The rest are converted using obj.to_f.",
"fork" =>
"fork {...}
Creates a child process. nil is returned in the child process and the child process' ID (integer) is returned in the parent process. If a block is specified, it's run in the child process.",
"format( fmt[, arg...])" =>
"See sprintf.",
"gets([ rs=$/])" =>
"Reads the filename specified in the command line or one line from standard input. The record separator string can be specified explicitly with rs.",
"global_variables" =>
"Returns an array of global variable names.",
"gsub( x, y)" =>
"gsub( x) {...}
Replaces all strings matching x in $_ with y. If a block is specified, matched strings are replaced with the result of the block. The modified result is assigned to $_.",
"gsub!( x, y)" =>
"gsub!( x) {...}
Performs the same substitution as gsub, except the string is changed in place.",
"Integer( obj)" =>
"Returns obj after converting it to an integer. Numeric objects are converted directly; nil is converted to 0; strings are converted considering 0x, 0b radix prefix. The rest are converted using obj.to_i.",
"lambda {| x|...}" =>
"proc {| x|...}
lambda
proc
Converts a block into a Proc object. If no block is specified, the block associated with the calling method is converted.",
"load( file[, private=false])" =>
"Loads a Ruby program from file. Unlike require, it doesn't load extension libraries. If private is true, the program is loaded into an anonymous module, thus protecting the namespace of the calling program.",
"local_variables" =>
"Returns an array of local variable names.",
"loop {...}" =>
"Repeats a block of code.",
"open( path[, mode='r'])" =>
"open( path[, mode='r']) {| f|...}
Opens a file. If a block is specified, the block is executed with the opened stream passed as an argument. The file is closed automatically when the block exits. If path begins with a pipe |, the following string is run as a command, and the stream associated with that process is returned.",
"p( obj)" =>
"Displays obj using its inspect method (often used for debugging).",
"print([ arg...])" =>
"Prints arg to $defout. If no arguments are specified, the value of $_ is printed.",
"printf( fmt[, arg...])" =>
"Formats arg according to fmt using sprintf and prints the result to $defout. For formatting specifications, see sprintf for detail.",
"proc {| x|...}" =>
"proc
See lamda.",
"putc( c)" =>
"Prints one character to the default output ($defout).",
"puts([ str])" =>
"Prints string to the default output ($defout). If the string doesn't end with a newline, a newline is appended to the string.",
"raise(...)" =>
"fail(...)
Raises an exception. Assumes RuntimeError if no exception class is specified. Calling raise without arguments in a rescue clause re-raises the exception. Doing so outside a rescue clause raises a message-less RuntimeError. fail is an obsolete name for raise.",
"rand([ max=0])" =>
"Generates a pseudo-random number greater than or equal to 0 and less than max. If max is either not specified or is set to 0, a random number is returned as a floating-point number greater than or equal to 0 and less than 1. srand may be used to initialize pseudo-random stream.",
"readline([ rs=$/])" =>
"Equivalent to gets except it raises an EOFError exception on reading EOF.",
"readlines([ rs=$/])" =>
"Returns an array of strings holding either the filenames specified as command-line arguments or the contents of standard input.",
"require( lib)" =>
"Loads the library (including extension libraries) lib when it's first called. require will not load the same library more than once. If no extension is specified in lib, require tries to add .rb,.so, etc., to it.",
"scan( re)" =>
"scan( re) {|x|...}
Equivalent to $_.scan.",
"select( reads[, writes=nil[, excepts=nil[, timeout=nil]]])" =>
"Checks for changes in the status of three types of IO objects input, output, and exceptions which are passed as arrays of IO objects. nil is passed for arguments that don't need checking. A three-element array containing arrays of the IO objects for which there were changes in status is returned. nil is returned on timeout.",
"set_trace_func( proc)" =>
"Sets a handler for tracing. proc may be a string or proc object. set_trace_func is used by the debugger and profiler.",
"sleep([ sec])" =>
"Suspends program execution for sec seconds. If sec isn't specified, the program is suspended forever.",
"split([ sep[, max]])" =>
"Equivalent to $_.split.
sprintf( fmt[, arg...])
format( fmt[, arg...])
Returns a string in which arg is formatted according to fmt. Formatting specifications are essentially the same as those for sprintf in the C programming language. Conversion specifiers (% followed by conversion field specifier) in fmt are replaced by formatted string of corresponding argument. A list of conversion filed is given below in next section.",
"srand([ seed])" =>
"Initializes an array of random numbers. If seed isn't specified, initialization is performed using the time and other system information for the seed.",
"String( obj)" =>
"Returns obj after converting it to a string using obj.to_s.",
"syscall( sys[, arg...])" =>
"Calls an operating system call function specified by number sys. The numbers and meaning of sys is system-dependant.",
"system( cmd[, arg...])" =>
"Executes cmd as a call to the command line. If multiple arguments are specified, the command is run directly with no shell expansion. Returns true if the return status is 0 (success).",
"sub( x, y)" =>
"sub( x) {...}
Replaces the first string matching x in $_ with y. If a block is specified, matched strings are replaced with the result of the block. The modified result is assigned to $_.",
"sub!( x, y)" =>
"sub!( x) {...}
Performs the same replacement as sub, except the string is changed in place.",
"test( test, f1[, f2])" =>
"Performs various file tests specified by the character test. In order to improve readability, you should use File class methods (for example File::readable?) rather than this function. A list of arguments is given below in next section.",
"throw( tag[, value=nil])" =>
"Jumps to the catch function waiting with the symbol or string tag. value is the return value to be used by catch.",
"trace_var( var, cmd)" =>
"trace_var( var) {...}
Sets tracing for a global variable. The variable name is specified as a symbol. cmd may be a string or Proc object.",
"trap( sig, cmd)" =>
"trap( sig) {...}
Sets a signal handler. sig may be a string (like SIGUSR1) or an integer. SIG may be omitted from signal name. Signal handler for EXIT signal or signal number 0 is invoked just before process termination.",
"untrace_var( var[, cmd])" =>
"Removes tracing for a global variable. If cmd is specified, only that command is removed."
     }

 @random = []
    @random2 = []
      rando = @symbols.sort_by {rand}
      rando = rando.each { |k,v|  @random << k and @random2 << v}
      @sym = @random2[0]
      @answer = @random[0]
      @sym2 = @random[0..10].sort_by {rand}

  end
end

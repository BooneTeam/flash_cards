# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	cards = Card.create([
		{:word => "alias", :definition => "duplicate method name for a given method. The original method continues to be accessible", :cardtype => "rubykeys"},
   {:word =>  "and", :definition =>  "puts Hello and Goodbye
    the subexpression puts Hello is executed first, and returns nil. The whole expression thus reduces to:
    nil and Goodbye", :cardtype => "rubykeys"},
   {:word =>  "begin", :definition =>  "Together with end, delimits what is commonly called a ____ block (to distinguish it from the Proc type of code block). A _____ block allows the use of while and until in modifier position with multi-line statements:", :cardtype => "rubykeys"}, 
  {:word =>  "break", :definition =>  "Causes unconditional termination of a code block or while or until block, with control transfered to the line after the block. If given an argument, returns that argument as the value of the terminated block.", :cardtype => "rubykeys"},
  {:word =>  "case", :definition =>  "consists of an optional condition, which is in the position of an argument to ___, and zero or more when clauses. The first when clause to match the condition (or to evaluate to Boolean truth, if the condition is null) wins, and its code stanza is executed. The value of the case statement is the value of the successful when clause, or nil if there is no such clause.
        A ____ statement can end with an else clause. Each when statement can have multiple candidate values, separated by commas.", :cardtype => "rubykeys"},
  {:word =>  "class", :definition =>  "Takes either a constant name or an expression of the form << object. In the latter case, opens a definition block for the singleton class of object.
        ____ may be opened more than once, and methods and constants added during those subsequent openings. ____ blocks have their own local scope; local variables in scope already are not visible inside the block, and variables created inside the block do not survive the block.", :cardtype => "rubykeys"},
   {:word =>  "def", :definition =>  "Paired with a terminating end, constitutes a method definition. Starts a new local scope; local variables in existence when the ___ block is entered are not in scope in the block, and local variables created in the block do not survive beyond the block.", :cardtype => "rubykeys"},
   {:word =>  "defined?", :definition =>  "expression tests whether or not expression refers to anything recognizable (literal object, local variable that has been initialized, method name visible from the current scope, etc.). The return value is nil if the expression cannot be resolved. Otherwise, the return value provides information about the expression.", :cardtype => "rubykeys"},
  {:word =>  "do", :definition =>  "Paired with end, can delimit a code block:
    array.each ___ |element|  
    puts element * 10
    end
    In this context, ____/end is equivalent to curly braces, except that curly braces have higher precedence. In this example:", :cardtype => "rubykeys"},
  {:word =>  "else",  :definition =>  "The ____ keyword denotes a final conditional branch. It appears in connection with if, unless, and case, and rescue. (In the case of rescue, the else branch is executed if no exception is raised.) The else clause is always the last branch in the entire statement, except in the case of rescue where it can be followed by an ensure clause.", :cardtype => "rubykeys"},
   {:word =>  "elsif", :definition =>  "Introduces a branch in a conditional (if or unless) statement. Such a statement can contain any number of elsif branches, including zero", :cardtype => "rubykeys"},
  {:word =>  "END",:definition =>  "Designates, via code block, code to be executed just prior to program termination.", :cardtype => "rubykeys"},
   {:word =>  "end", :definition =>  "Marks the end of a while, until, begin, if, def, class, or other keyword-based, block-based construct.", :cardtype => "rubykeys"},
   {:word =>  "ensure",:definition =>  "Marks the final, optional clause of a begin/end block, generally in cases where the block also contains a rescue clause. The code in the _______ clause is guaranteed to be executed, whether control flows to the rescue block or not.", :cardtype => "rubykeys"},
   {:word =>  "false", :definition =>  "alse denotes a special object, the sole instance of FalseClass. false and nil are the only objects that evaluate to Boolean falsehood in Ruby (informally, that cause an if condition to fail.)", :cardtype => "rubykeys"},
   {:word =>  "for", :definition =>  "A loop constructor, used with in", :cardtype => "rubykeys"},
   {:word =>  "if", :definition =>  "Rubys basic conditional statement constructor. ____ evaluates its argument and branches on the result. Additional branches can be added to an ___ statement with else and elsif.", :cardtype => "rubykeys"},
  {:word =>  "in", :definition =>  "used in for ie: for x __ do ...", :cardtype => "rubykeys"},
  {:word =>  "module", :definition =>  "Takes a constant (the name of the _____) as its argument. The definition block starts a new local scope; existing variables are not visible inside the block, and local variables created in the block do not survive the end of the block. Inside the _______ definition, self is set to the _____ object itself.", :cardtype => "rubykeys"},
  {:word =>  "next", :definition =>  "Bumps an iterator, or a while or until block,to the next iteration, unconditionally and without executing whatever may remain of the block.", :cardtype => "rubykeys"},
  {:word =>  "nil", :definition =>  "A special non-object. ____ is, in fact, an object (the sole instance of NilClass), but connotes absence and indeterminacy. ____ and false are the only two objects in Ruby that have Boolean falsehood (informally, that cause an if condition to fail).", :cardtype => "rubykeys"},
  {:word =>  "not", :definition =>  "Boolean negation. similar to !", :cardtype => "rubykeys"},
  {:word =>  "or", :definition =>  "puts Hi or Bye is interpreted as (puts Hi) or Bye. Since puts Hi reduces to nil, the whole expression reduces to nil or Bye which evaluates to Bye. (The side-effect printing of Hi does take place.)", :cardtype => "rubykeys"},
  {:word =>  "redo", :definition =>  "Causes unconditional re-execution of a code block, with the same parameter bindings as the current execution.", :cardtype => "rubykeys"},
  {:word =>  "rescue", :definition =>  "Designates an exception-handling clause. Can occur either inside a begin<code>/<code>end block, inside a method definition (which implies begin), or in modifier position (at the end of a statement).", :cardtype => "rubykeys"},
  {:word =>  "retry", :definition =>  "Inside a _____ clause, ____ causes Ruby to return to the top of the enclosing code (the begin keyword, or top of method or block) and try executing the code again", :cardtype => "rubykeys"},
  {:word =>  "require", :definition =>  "use a file in the ruby load path", :cardtype => "rubykeys"},
  {:word =>  "require_relative", :definition =>  "use a file in the same directory", :cardtype => "rubykeys"},
  {:word =>  "return", :definition =>  "Inside a method definition, executes the ensure clause, if present, and then returns control to the context of the method call. Takes an optional argument (defaulting to nil), which serves as the return value of the method. Multiple values in argument position will be returned in an array", :cardtype => "rubykeys"},
  {:word =>  "self", :definition =>  "____ is the current object and the default receiver of messages (method calls) for which no explicit receiver is specified. Which object plays the role of self depends on the context.", :cardtype => "rubykeys"},
  {:word =>  "super", :definition =>  "Called from a method, searches along the method lookup path (the classes and modules available to the current object) for the next method of the same name as the one being executed. Such method, if present, may be defined in the superclass of the objects class, but may also be defined in the superclasss superclass or any class on the upward path, as well as any module mixed in to any of those classes.", :cardtype => "rubykeys"},
  {:word =>  "then", :definition =>  "Optional component of conditional statements (if, unless, when). Never mandatory, but allows for one-line conditionals without semi-colons. The following two statements are equivalent", :cardtype => "rubykeys"},
  {:word =>  "true", :definition =>  "The sole instance of the special class TrueClass. true encapsulates Boolean truth; however, <emph>all</emph> objects in Ruby are true in the Boolean sense (informally, they cause an if test to succeed), with the exceptions of false and nil.", :cardtype => "rubykeys"},
  {:word =>  "undef", :definition =>  "____ a given method, for the class or module in which its called. If the method is defined higher up in the lookup path (such as by a superclass), it can still be called by instances classes higher up.", :cardtype => "rubykeys"},
  {:word =>  "unless", :definition =>  "The negative equivalent of if.", :cardtype => "rubykeys"},
  {:word =>  "until", :definition =>  "The inverse of while: executes code until a given condition is true, i.e., while it is not true. The semantics are the same as those of while; see while.", :cardtype => "rubykeys"},
  {:word =>  "when", :definition =>  "used in with \"case\"", :cardtype => "rubykeys"},
  {:word =>  "while", :definition =>  " takes a condition argument, and executes the code that follows (up to a matching end delimiter) _____ the condition is true.", :cardtype => "rubykeys"},
  {:word =>  "yield", :definition =>  "Called from inside a method body, _____ control to the code block (if any) supplied as part of the method call. If no code block has been supplied, calling ____ raises an exception.
        _____ can take an argument; any values thus _____ed are bound to the block's parameters. The value of a call to _____ is the value of the executed code block.", :cardtype => "rubykeys"
      },

      #this is where ruby functs start
      
{:word => "abort", :definition => "Terminates program. If an exception is raised (i.e., $! isn't nil), its error message is displayed.", :cardtype => "rubyfuncts"},
{:word => "Array( obj)", :definition => "Returns obj after converting it to an array using to_ary or to_a.", :cardtype => "rubyfuncts"},
{:word => "at_exit {...}", :definition => "Registers a block for execution when the program exits. Similar to END statement, but END statement registers the block only once.", :cardtype => "rubyfuncts"},
{:word => "autoload( classname, file)", :definition =>
 "Registers a class classname to be loaded from file the first time it's used. classname may be a string or a symbol.", :cardtype => "rubyfuncts"},
{:word => "binding", :definition=>
"Returns the current variable and method bindings. The Binding object that is returned may be passed to the eval method as its second argument.", :cardtype => "rubyfuncts"},
{:word => "block_given?", :definition =>
"Returns true if the method was called with a block.", :cardtype => "rubyfuncts"},
{:word => "callcc {| c|...}", :definition =>
"Passes a Continuation object c to the block and executes the block. callcc can be used for global exit or loop construct.", :cardtype => "rubyfuncts"},
{:word => "caller([ n])" , :definition=>
"Returns the current execution stack in an array of the strings in the form file:line. If n is specified, returns stack entries from nth level on down.", :cardtype => "rubyfuncts"},
{:word => "catch( tag) {...}", :definition =>
"Catches a nonlocal exit by a throw called during the execution of its block.", :cardtype => "rubyfuncts"},
{:word => "chomp([ rs=$/])", :definition =>
"Returns the value of variable $_ with the ending newline removed, assigning the result back to $_. The value of the newline string can be specified with rs.", :cardtype => "rubyfuncts"},
{:word => "chomp!([ rs=$/])", :definition =>
"Removes newline from $_, modifying the string in place.", :cardtype => "rubyfuncts"},
{:word => "chp", :definition =>
"Returns the value of $_ with its last character (one byte) removed, assigning the result back to $_.", :cardtype => "rubyfuncts"},
{:word => "chop!", :definition =>
"Removes the last character from $_, modifying the string in place.", :cardtype => "rubyfuncts"},
{:word => "eval( str[, scope[, file, line]])", :definition =>
"Executes str as Ruby code. The binding in which to perform the evaluation may be specified with scope. The filename and line number of the code to be compiled may be specified using file and line.", :cardtype => "rubyfuncts"},
{:word => "exec( cmd[, arg...])", :definition =>
"Replaces the current process by running the command cmd. If multiple arguments are specified, the command is executed with no shell expansion.", :cardtype => "rubyfuncts"},
{:word => "exit([ result=0])", :definition =>
"Exits program, with result as the status code returned.", :cardtype => "rubyfuncts"},
{:word => "exit!([ result=0])", :definition =>
"Kills the program bypassing exit handling such as ensure, etc.", :cardtype => "rubyfuncts"},
{:word => "fail(...)", :definition =>
"See raise(...)", :cardtype => "rubyfuncts"},
{:word => "Float( obj)", :definition =>
"Returns obj after converting it to a float. Numeric objects are converted directly; nil is converted to 0.0; strings are converted considering 0x, 0b radix prefix. The rest are converted using obj.to_f.", :cardtype => "rubyfuncts"},
{:word => "fork", :definition =>
"fork {...}
Creates a child process. nil is returned in the child process and the child process' ID (integer) is returned in the parent process. If a block is specified, it's run in the child process.", :cardtype => "rubyfuncts"},
{:word => "format( fmt[, arg...])", :definition =>
"See sprintf.", :cardtype => "rubyfuncts"},
{:word => "gets([ rs=$/])", :definition =>
"Reads the filename specified in the command line or one line from standard input. The record separator string can be specified explicitly with rs.", :cardtype => "rubyfuncts"},
{:word => "global_variables", :definition =>
"Returns an array of global variable names.", :cardtype => "rubyfuncts"},
{:word => "gsub( x, y)", :definition =>
"gsub( x) {...}
Replaces all strings matching x in $_ with y. If a block is specified, matched strings are replaced with the result of the block. The modified result is assigned to $_.", :cardtype => "rubyfuncts"},
{:word => "gsub!( x, y)", :definition =>
"gsub!( x) {...}
Performs the same substitution as gsub, except the string is changed in place.", :cardtype => "rubyfuncts"},
{:word => "Integer( obj)", :definition =>
"Returns obj after converting it to an integer. Numeric objects are converted directly; nil is converted to 0; strings are converted considering 0x, 0b radix prefix. The rest are converted using obj.to_i.", :cardtype => "rubyfuncts"},
{:word => "lambda {| x|...}", :definition =>
"proc {| x|...}
lambda
proc
Converts a block into a Proc object. If no block is specified, the block associated with the calling method is converted.", :cardtype => "rubyfuncts"},
{:word => "load( file[, private=false])", :definition =>
"Loads a Ruby program from file. Unlike require, it doesn't load extension libraries. If private is true, the program is loaded into an anonymous module, thus protecting the namespace of the calling program.", :cardtype => "rubyfuncts"},
{:word => "local_variables", :definition =>
"Returns an array of local variable names.", :cardtype => "rubyfuncts"},
{:word => "loop {...}", :definition =>
"Repeats a block of code.", :cardtype => "rubyfuncts"},
{:word => "open( path[, mode='r'])", :definition =>
"open( path[, mode='r']) {| f|...}
Opens a file. If a block is specified, the block is executed with the opened stream passed as an argument. The file is closed automatically when the block exits. If path begins with a pipe |, the following string is run as a command, and the stream associated with that process is returned.", :cardtype => "rubyfuncts"},
{:word => "p( obj)", :definition =>
"Displays obj using its inspect method (often used for debugging).", :cardtype => "rubyfuncts"},
{:word => "print([ arg...])", :definition =>
"Prints arg to $defout. If no arguments are specified, the value of $_ is printed.", :cardtype => "rubyfuncts"},
{:word => "printf( fmt[, arg...])", :definition =>
"Formats arg according to fmt using sprintf and prints the result to $defout. For formatting specifications, see sprintf for detail.", :cardtype => "rubyfuncts"},
{:word => "proc {| x|...}", :definition =>
"proc
See lamda.", :cardtype => "rubyfuncts"},
{:word => "putc( c)", :definition =>
"Prints one character to the default output ($defout).", :cardtype => "rubyfuncts"},
{:word => "puts([ str])", :definition =>
"Prints string to the default output ($defout). If the string doesn't end with a newline, a newline is appended to the string.", :cardtype => "rubyfuncts"},
{:word => "raise(...)", :definition =>
"fail(...)
Raises an exception. Assumes RuntimeError if no exception class is specified. Calling raise without arguments in a rescue clause re-raises the exception. Doing so outside a rescue clause raises a message-less RuntimeError. fail is an obsolete name for raise.", :cardtype => "rubyfuncts"},
{:word => "rand([ max=0])", :definition =>
"Generates a pseudo-random number greater than or equal to 0 and less than max. If max is either not specified or is set to 0, a random number is returned as a floating-point number greater than or equal to 0 and less than 1. srand may be used to initialize pseudo-random stream.", :cardtype => "rubyfuncts"},
{:word => "readline([ rs=$/])", :definition =>
"Equivalent to gets except it raises an EOFError exception on reading EOF.", :cardtype => "rubyfuncts"},
{:word => "readlines([ rs=$/])", :definition =>
"Returns an array of strings holding either the filenames specified as command-line arguments or the contents of standard input.", :cardtype => "rubyfuncts"},
{:word => "require( lib)", :definition =>
"Loads the library (including extension libraries) lib when it's first called. require will not load the same library more than once. If no extension is specified in lib, require tries to add .rb,.so, etc., to it.", :cardtype => "rubyfuncts"},
{:word => "scan( re)", :definition =>
"scan( re) {|x|...}
Equivalent to $_.scan.", :cardtype => "rubyfuncts"},
{:word => "select( reads[, writes=nil[, excepts=nil[, timeout=nil]]])", :definition =>
"Checks for changes in the status of three types of IO objects input, output, and exceptions which are passed as arrays of IO objects. nil is passed for arguments that don't need checking. A three-element array containing arrays of the IO objects for which there were changes in status is returned. nil is returned on timeout.", :cardtype => "rubyfuncts"},
{:word => "set_trace_func( proc)", :definition =>
"Sets a handler for tracing. proc may be a string or proc object. set_trace_func is used by the debugger and profiler.", :cardtype => "rubyfuncts"},
{:word => "sleep([ sec])", :definition =>
"Suspends program execution for sec seconds. If sec isn't specified, the program is suspended forever.", :cardtype => "rubyfuncts"},
{:word => "split([ sep[, max]])", :definition =>
"Equivalent to $_.split.
sprintf( fmt[, arg...])
format( fmt[, arg...])
Returns a string in which arg is formatted according to fmt. Formatting specifications are essentially the same as those for sprintf in the C programming language. Conversion specifiers (% followed by conversion field specifier) in fmt are replaced by formatted string of corresponding argument. A list of conversion filed is given below in next section.", :cardtype => "rubyfuncts"},
{:word => "srand([ seed])", :definition =>
"Initializes an array of random numbers. If seed isn't specified, initialization is performed using the time and other system information for the seed.", :cardtype => "rubyfuncts"},
{:word => "String( obj)", :definition =>
"Returns obj after converting it to a string using obj.to_s.", :cardtype => "rubyfuncts"},
{:word => "syscall( sys[, arg...])", :definition =>
"Calls an operating system call function specified by number sys. The numbers and meaning of sys is system-dependant.", :cardtype => "rubyfuncts"},
{:word => "system( cmd[, arg...])", :definition =>
"Executes cmd as a call to the command line. If multiple arguments are specified, the command is run directly with no shell expansion. Returns true if the return status is 0 (success).", :cardtype => "rubyfuncts"},
{:word => "sub( x, y)", :definition =>
"sub( x) {...}
Replaces the first string matching x in $_ with y. If a block is specified, matched strings are replaced with the result of the block. The modified result is assigned to $_.", :cardtype => "rubyfuncts"},
{:word => "sub!( x, y)", :definition =>
"sub!( x) {...}
Performs the same replacement as sub, except the string is changed in place.", :cardtype => "rubyfuncts"},
{:word => "test( test, f1[, f2])", :definition =>
"Performs various file tests specified by the character test. In order to improve readability, you should use File class methods (for example File::readable?) rather than this function. A list of arguments is given below in next section.", :cardtype => "rubyfuncts"},
{:word => "throw( tag[, value=nil])", :definition =>
"Jumps to the catch function waiting with the symbol or string tag. value is the return value to be used by catch.", :cardtype => "rubyfuncts"},
{:word => "trace_var( var, cmd)", :definition =>
"trace_var( var) {...}
Sets tracing for a global variable. The variable name is specified as a symbol. cmd may be a string or Proc object.", :cardtype => "rubyfuncts"},
{:word => "trap( sig, cmd)", :definition =>
"trap( sig) {...}
Sets a signal handler. sig may be a string (like SIGUSR1) or an integer. SIG may be omitted from signal name. Signal handler for EXIT signal or signal number 0 is invoked just before process termination.", :cardtype => "rubyfuncts"},
{:word => "untrace_var( var[, cmd])", :definition =>
"Removes tracing for a global variable. If cmd is specified, only that command is removed.", :cardtype => "rubyfuncts"
     },
     #git commands start here
{:word => "git config [key] [value]", :definition => "set a config value in this repository", :cardtype => "gitcommand"},
{:word => "git config --global [key] [value] ", :definition => "set a config value globally for this user", :cardtype => "gitcommand"},
{:word => "git init", :definition => "initialize an existing directory as a Git 
repository", :cardtype => "gitcommand"},
{:word =>  "git clone [url]", :definition => "clone a Git repository from a URL", :cardtype => "gitcommand"},
{:word => "git help [command]", :definition => 
  "get help on any Git command", :cardtype => "gitcommand"},
  #RailsRake Commands Start Here
{:word => "rake db:fixtures:load", :definition => 
  "Load fixtures into the current environment's database. Load specific fixtures using FIXTURES=x,y", :cardtype => "rake"},

{:word => "rake db:migrate", :definition => 
  "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x", :cardtype => "rake"},

{:word => "rake db:schema:dump", :definition => 
  "Create a db/schema.rb file that can be portably used against any DB supported by AR.", :cardtype => "rake"},

{:word => "rake db:schema:load", :definition =>
  "Load a schema.rb file into the database.", :cardtype => "rake"},

{:word => "rake db:sessions:clear", :definition => 
  "Clear the sessions table.", :cardtype => "rake"},

{:word => "rake db:sessions:create", :definition => 
 "Creates a sessions table for use with CGI::Session::ActiveRecordStore.", :cardtype => "rake"},

{:word => "rake db:structure:dump", :definition => 
  "Dump the database structure to a SQL file.", :cardtype => "rake"},

{:word => "rake db:test:clone", :definition => 
  "Recreate the test database from the current environment's database schema.", :cardtype => "rake"},

{:word => "rake db:test:clone_structure", :definition => 
  "Recreate the test databases from the development structure.", :cardtype => "rake"}
]);
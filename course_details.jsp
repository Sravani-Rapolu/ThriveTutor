<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Details - Thrive Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border: 2px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }
        #popup h2 {
            margin-top: 0;
        }
        #popup button {
            margin: 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #yesBtn {
            background-color: #007bff;
            color: white;
        }
        #noBtn {
            background-color: #dc3545;
            color: white;
        }
        /* Overlay for the popup */
        #overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 999;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .topics, .content {
            padding: 20px;
            margin: 10px;
        }
        .topics {
            flex: 1;
            border-right: 1px solid #ccc;
            overflow-y: auto;
        }
        .content {
            flex: 3;
            overflow-y: auto;
        }
        .hidden {
            display: none;
        }
        .datatable {
            width: 100%;
            border-collapse: collapse;
        }
        .datatable th, .datatable td {
            border: 1px solid #f74134;
            padding: 8px;
        }
        .datatable th {
            background-color: #f51111;
            text-align: left;
        }
        .datatable tr:hover {
            background-color: #40e0f5;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <img src="images/finallogo.png" alt="Thrive Tutor Logo">
            <span>Thrive Tutor</span>
        </div>
    </header>

    <div class="container">
        <div class="topics">
            <h3>Topics</h3>
            <ul id="java" class="hidden">
                <li><a href="#" onclick="showContent('topic1')">Introduction</a></li>
                <li><a href="#" onclick="showContent('topic2')">Java Syntax and Comments</a></li>
                <li><a href="#" onclick="showContent('topic3')">Variables and Identifiers</a></li>
                <li><a href="#" onclick="showContent('topic4')">Data types </a></li>
                <li><a href="#" onclick="showContent('topic5')">Java Conditions</a></li>
                <li><a href="#" onclick="showContent('topic6')">Java Methods and Classes</a></li>
            </ul>
            <ul id="course2" class="hidden">
                <li><a href="#" onclick="showContent('topic7')">Introduction</a></li>
                <li><a href="#" onclick="showContent('topic8')">Python Syntax and comments</a></li>
                <li><a href="#" onclick="showContent('topic9')">Python Variables</a></li>
                <li><a href="#" onclick="showContent('topic10')">Data Types</a></li>
                <li><a href="#" onclick="showContent('topic11')">String Methods</a></li>
                <li><a href="#" onclick="showContent('topic12')">Lists</a></li>
            </ul>
            <ul id="course3" class="hidden">
                <li><a href="#" onclick="showContent('topic13')">Introduction</a></li>
                <li><a href="#" onclick="showContent('topic14')">Functions of operating system</a></li>
                <li><a href="#" onclick="showContent('topic15')">Types of operating system</a></li>
                <li><a href="#" onclick="showContent('topic16')"> Need and Functions of operating system</a></li>
                <li><a href="#" onclick="showContent('topic17')">Commonly used operating system</a></li>
            </ul>
            <ul id="course4" class="hidden">
                <li><a href="#" onclick="showContent('topic18')">Machine Learning</a></li>
                <li><a href="#" onclick="showContent('topic19')">Classification</a></li>
                <li><a href="#" onclick="showContent('topic20')">Data Analysis</a></li>
                <li><a href="#" onclick="showContent('topic21')">Model Assessment</a></li>
                <li><a href="#" onclick="showContent('topic22')">Decision Trees</a></li>
            </ul>
            <ul id="course5" class="hidden">
                <li><a href="#" onclick="showContent('topic23')">markets,efficiency,Role of gvt</a></li>
                <li><a href="#" onclick="showContent('topic24')">GDP</a></li>
                <li><a href="#" onclick="showContent('topic25')">Inflation,unemployment,Inequality</a></li>
            </ul>
        </div>
        <div class="content">
            <h3>Content</h3>
            <div id="topic1" class="hidden">
                <h3>What is java??</h3>
                <p>
                    Java is a popular programming language, created in 1995.
                    It is owned by Oracle, and more than 3 billion devices run Java.</p>
                    
                    <h4>It is used for:</h4>
                    <p>Mobile applications (specially Android apps),<br>
                    Desktop applications<br>
                    Web applications<br>
                    Web servers and application servers<br>
                    Games<br>
                    Database connection<br>
                    And much, much more!<br></p>
                    
                    <h3>Why Use Java?</h3>
                    <p>Java works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc.)<br>
                    It is one of the most popular programming languages in the world<br>
                    It has a large demand in the current job market<br>
                    It is easy to learn and simple to use<br>
                    It is open-source and free<br>
                    It is secure, fast and powerful<br>
                    It has huge community support (tens of millions of developers)<br>
                    Java is an object oriented language which gives a clear structure to programs and allows code to be reused, lowering development costs<br>
                    As Java is close to C++ and C#, it makes it easy for programmers to switch to Java or vice versa.<br>
                    </p>
            </div>
            <div id="topic2" class="hidden">
                <h3>Java Syntax:</h3>
                <p>The main() method is required and you will see it in every Java program:<br>

                    public static void main(String[] args)<br><br>
                    Any code inside the main() method will be executed. Don't worry about the keywords before and after main. You will get to know them bit by bit while reading this tutorial.<br>
                    
                    For now, just remember that every Java program has a class name which must match the filename, and that every program must contain the main() method.
                    Inside the main() method, we can use the println() method to print a line of text to the screen:<br>
                    <br>
                    public static void main(String[] args) {<br>
                      System.out.println("Hello World");<br>
                    }<br>
                    <br>
                    Note: The curly braces {} marks the beginning and the end of a block of code.<br>
                    
                    System is a built-in Java class that contains useful members, such as out, which is short for "output". The println() method, short for "print line", is used to print a value to the screen (or a file).<br>
                    
                    Don't worry too much about System, out and println(). Just know that you need them together to print stuff to the screen.<br>
                    
                    You should also note that each code statement must end with a semicolon (;).<br>
                    You can also use the println() method to print numbers.<br>
                    
                    However, unlike text, we don't put numbers inside double quotes.</p>
                    <h3>Comments:</h3>
                    <p>Comments can be used to explain Java code, and to make it more readable. It can also be used to prevent execution when testing alternative code.</p>
                    <h4>Single Line Comments:</h4>
                    <p>Single-line comments start with two forward slashes (//).<br>

                        Any text between // and the end of the line is ignored by Java (will not be executed).
                        
                        </p><br><br>
                        <h4>Multi-Line Comments:</h4>
                        <p>Multi-line comments start with /* and ends with */.<br>

                            Any text between /* and */ will be ignored by Java.</p>
            </div>
            <div id="topic3" class="hidden">
                <h3> Variables</h3>
                <p>Variables are containers for storing data values.<br>

                    In Java, there are different types of variables, for example:<br>
                    
                    String - stores text, such as "Hello". String values are surrounded by double quotes<br>
                    int - stores integers (whole numbers), without decimals, such as 123 or -123<br>
                    float - stores floating point numbers, with decimals, such as 19.99 or -19.99<br>
                    char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes<br>
                    boolean - stores values with two states: true or false<br>
                    </p>
                    <h4>Declaring variables</h4>
                    <h5>Syntax:</h5>
                    <i>type variableName = value;</i>
                    <h4>Example:</h4>
                    <i>int myNum = 5;<br>
                        float myFloatNum = 5.99f;<br>
                        char myLetter = 'D';<br>
                        boolean myBool = true;<br>
                        String myText = "Hello";</i>
                    <h3>Identifiers</h3>
                    <p>All Java variables must be identified with unique names.<br>

                        These unique names are called identifiers.<br>
                        
                        Identifiers can be short names (like x and y) or more descriptive names (age, sum, totalVolume).<br>
                        
                        Note: It is recommended to use descriptive names in order to create understandable and maintainable code</p>
                        <h5>The general rules for naming variables are:</h5>
                        <ul>
                            <li>
                                Names can contain letters, digits, underscores, and dollar signs
                            </li>
                            <li>
                                Names must begin with a letter
                            </li>
                            <li>
                                Names should start with a lowercase letter, and cannot contain whitespace
                            </li>
                            <li>
                                Names are case-sensitive 
                            </li>
                            <li>
                                Reserved words (like Java keywords, such as int or boolean) cannot be used as names

                            </li>
                        </ul>
                        
                    
            </div>
            <div id="topic4" class="hidden">
                <h3>Data Types:</h3>
                <p>Data types are divided into two groups:<br>

                    Primitive data types - includes byte, short, int, long, float, double, boolean and char<br>
                    Non-primitive data types - such as String, Arrays and Classes </p>
                    <h4>Primitive Data Types:</h4>
                    <p>A primitive data type specifies the size and type of variable values, and it has no additional methods.<br>

                        There are eight primitive data types in Java:</p>
                    <table class="datatable">
                        <tbody>
                            <tr>
                                <th style="width:20%">Data Type</th>
                                <th style="width:17%">Size</th>
                                <th style="width:63%">Description</th>
                            </tr>
                            <tr>
                                <td>
                                    byte
                                </td>
                                <td>1 byte</td>
                                <td>Stores whle numbers from -128 to 127</td>
                            </tr>
                            <tr>
                                <td>short</td>
                                <td>2 bytes</td>
                                <td>Stores whole numbers from -32,768 to 32,767</td>
                            </tr>
                            <tr>
                                <td>int</td>
                                <td>4 bytes</td>
                                <td>stores whole numbers from -2,147,483,648 to 2,147,483,647</td>
                            </tr>
                            <tr>
                                <td>long</td>
                                <td>8 bytes</td>
                                <td>stores whole numbers from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807</td>
                            </tr>
                            <tr>
                                <td>float</td>
                                <td>4 bytes</td>
                                <td>stores fractional numbers, sufficient for storing 6 to 7 decimal digits.</td>
                            </tr>
                            <tr>
                                <td>double</td>
                                <td>8 bytes</td>
                                <td>stores fractional numbers, sufficient for storing 15 decimal digits.</td>
                            </tr>
                            <tr>
                                <td>boolean</td>
                                <td>1 bit</td>
                                <td>stores true or false value</td>
                            </tr>
                            <tr>
                                <td>char</td>
                                <td>2 bytes</td>
                                <td>stores a single character/letter or ASCII values</td>
                            </tr>
                        </tbody>
                    </table>
                    <h4>Non-Primitive Data Types:</h4>
                    <p>Non-primitive data types are called reference types because they refer to objects.<br>

                        The main difference between primitive and non-primitive data types are:</p>
                        <ul>
                            <li>Primitive types are predefined (already defined) in Java. Non-primitive types are created by the programmer and is not defined by Java (except for String).</li>
                            <li>Non-primitive types can be used to call methods to perform certain operations, while primitive types cannot.
                            </li>
                            <li>A primitive type has always a value, while non-primitive types can be null.
                            </li>
                            <li>
                                A primitive type starts with a lowercase letter, while non-primitive types starts with an uppercase letter.
                            </li>
                        </ul>
            </div>
            <div id="topic5" class="hidden">
                <h3>If Statements...</h3>
                <p>You already know that Java supports the usual logical conditions from mathematics:<br>

                    Less than: a < b<br>
                    Less than or equal to: a <= b<br>
                    Greater than: a > b<br>
                    Greater than or equal to: a >= b<br>
                    Equal to a == b<br>
                    Not Equal to: a != b</p>
                    <p>You can use these conditions to perform different actions for different decisions.<br>

                        Java has the following conditional statements:</p>
                        <ul>
                            <li>Use if to specify a block of code to be executed, if a specified condition is true
                            </li>
                            <li>Use else to specify a block of code to be executed, if the same condition is false
                            </li>
                            <li>Use else if to specify a new condition to test, if the first condition is false
                            </li>
                            <li>Use switch to specify many alternative blocks of code to be executed
                            </li>
                        </ul>
                        <h3>Loops</h3>
                        <P>Loops can execute a block of code as long as a specified condition is reached.<br>

                            Loops are handy because they save time, reduce errors, and they make code more readable.
                            
                            </P>
                            <h4>Java While loop:</h4>
                            <i>while (condition) {<br>
                                // code block to be executed<br>
                              }</i>
                              <h4>For Loop:</h4>
                              <i>for (statement 1; statement 2; statement 3) {<br>
                                // code block to be executed<br>
                              }</i>
                              <p>Statement 1 is executed (one time) before the execution of the code block.<br>

                                Statement 2 defines the condition for executing the code block.<br>
                                
                                Statement 3 is executed (every time) after the code block has been executed.</p>
                                <h4>Break:</h4>
                                <p>It was used to "jump out" of a switch statement.<br>

                                    The break statement can also be used to jump out of a loop.</p>
                                    <h4>Continue:</h4>
                                    <p>The continue statement breaks one iteration (in the loop), if a specified condition occurs, and continues with the next iteration in the loop.</p>
            </div>
            <div id="topic6" class="hidden">
                <h3>Methods</h3>
                <p>A method is a block of code which only runs when it is called.<br>

                    You can pass data, known as parameters, into a method.<br>
                    
                    Methods are used to perform certain actions, and they are also known as functions.
                    
                    </p>
                    <h4>Create a method:</h4>
                <p>A method must be declared within a class. It is defined with the name of the method, followed by parentheses (). Java provides some pre-defined methods, such as System.out.println(), but you can also create your own methods to perform certain actions:</p>
                <i>public class Main {<br>
                    static void myMethod() {<br>
                      // code to be executed<br>
                    }<br>
                  }</i>
                  <h4>Call a mathod:</h4>
                  <p>To call a method in Java, write the method's name followed by two parentheses () and a semicolon;</p>
                  <h3>Parameters and Arguments</h3>
                  <p>Information can be passed to methods as parameter. Parameters act as variables inside the method.<br>

                    Parameters are specified after the method name, inside the parentheses. You can add as many parameters as you want, just separate them with a comma.</p>
                    <p>When a parameter is passed to the method, it is called an <b>argument</b>.</p>
                <h3>Java OOP:</h3>
                <p>OOP stands for <b>Object-Oriented Programming.</b><br>

                    Procedural programming is about writing procedures or methods that perform operations on the data, while object-oriented programming is about creating objects that contain both data and methods.<br>
                    
                    Object-oriented programming has several advantages over procedural programming:</p>
                    <ul>
                        <li>OOP is faster and easier to execute
                        </li>
                        <li>OOP provides a clear structure for the programs
                        </li>
                        <li>OOP helps to keep the Java code DRY "Don't Repeat Yourself", and makes the code easier to maintain, modify and debug
                        </li>
                        <li>OOP makes it possible to create full reusable applications with less code and shorter development time
                        </li>
                    </ul>
                    <h4>What are classes and objects??</h4>
                    <p>
                        Classes and objects are the two main aspects of object-oriented programming.<br>
                        So, a class is a template for objects, and an object is an instance of a class.<br>

When the individual objects are created, they inherit all the variables and methods from the class.
                    </p>
            </div>
            <div id="topic7"class="hidden">
                <h3>What is python?</h3>
                <p>Python is a popular programming language. It was created by Guido van Rossum, and released in 1991.<br>

                    It is used for:</p>
                    <ul>
                        <li>
                            web development (server-side)
                        </li>
                        <li>software development,                        </li>
                        <li>mathematics</li>
                        <li>system scripting.
                        </li>
                    </ul>
                <h4>What can python do?</h4>
                <ul>
                    <li>Python can be used on a server to create web applications.
                    </li>
                    <li>Python can be used alongside software to create workflows.
                    </li>
                    <li>Python can connect to database systems. It can also read and modify files.
                    </li>
                    <li>Python can be used to handle big data and perform complex mathematics.
                    </li>
                    <li>
                        Python can be used for rapid prototyping, or for production-ready software development.
                    </li>
                </ul>
                <h3>Why python?</h3>
                <ul>
                    <li>Python works on different platforms (Windows, Mac, Linux, Raspberry Pi, etc).
                    </li>
                    <li>Python has a simple syntax similar to the English language.
                    </li>
                    <li>Python has syntax that allows developers to write programs with fewer lines than some other programming languages.
                    </li>
                    <li>Python runs on an interpreter system, meaning that code can be executed as soon as it is written. This means that prototyping can be very quick.
                    </li>
                    <li>Python can be treated in a procedural way, an object-oriented way or a functional way.
                    </li>
                </ul>
            </div>
            <div id="topic8" class="hidden">
                <h3>Syntax:</h3>
                <i>>>> print("Hello, World!")<br>
                    Hello, World!</i>
                <p>Or by creating a python file on the server, using the .py file extension, and running it in the Command Line:</p>
                <i>C:\Users\Your Name>python myfile.py</i>
                <h3>Indentation:</h3>
                <p>Indentation refers to the spaces at the beginning of a code line.<br>

                    Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important.<br>
                    
                    Python uses indentation to indicate a block of code.</p>
                    <h6>Example</h6>
                    <i>if 5 > 2:<br>
                        print("Five is greater than two!")</i>
                        <p>Python will give you an error if you skip the indentation:</p>
                        <p>The number of spaces is up to you as a programmer, the most common use is four, but it has to be at least one. </p>
                        <h3>Comments:</h3>
                        <p>Comments can be used to explain Python code.<br>

                            Comments can be used to make the code more readable.<br>
                            
                            Comments can be used to prevent execution when testing code.
                            
                            </p>
                            <h4>Creating a comment</h4>
                            <p>Comments starts with a #, and Python will ignore them:</p>
                            <i>#This is a comment<br>
                                print("Hello, World!")</i>
                            <p>A comment does not have to be text that explains the code, it can also be used to prevent Python from executing code</p>
                            <h4>Multi-Line Comments</h4>
                            <p>Python does not really have a syntax for multiline comments.<br>

                                To add a multiline comment you could insert a # for each line</p>
                            <p>Or, not quite as intended, you can use a multiline string.<br>

                                Since Python will ignore string literals that are not assigned to a variable, you can add a multiline string (triple quotes) in your code, and place your comment inside it:
                                
                                </p>
                            <i>"""<br>
                                This is a comment<br>
                                written in<br>
                                more than just one line<br>
                                """<br>
                                print("Hello, World!")</i>
            </div>
            <div id="topic9" class="hidden">
                <h3>Variables</h3>
                <p>Variables are containers for storing data values.</p>
                <p>Python has no command for declaring a variable.<br>A variable is created the moment you first assign a value to it.</p>
                <i>x = 5<br>
                    y = "John"<br>
                    print(x)<br>
                    print(y)</i>
                <h4>Get the Type</h4>
                <i>x = 5<br>
                    y = "John"<br>
                    print(type(x))<br>
                    print(type(y))</i>
                <p>Variable names are case-sensitive.</p>
                <h5>Rules:</h5>
                <ul>
                    <li>A variable name must start with a letter or the underscore character
                    </li>
                    <li>A variable name cannot start with a number
                    </li>
                    <li>A variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )
                    </li>
                    <li>A variable name cannot be any of the Python keywords.
                    </li>
                </ul>
                <p>Legal variable names:</p>
                <i>
                    myvar = "John"<br>
                    my_var = "John"<br>
                    _my_var = "John"<br>
                    myVar = "John"<br>
                    MYVAR = "John"<br>
                    myvar2 = "John"<br>
                </i>
            </div>
            <div id="topic10" class="hidden">
                <h3>DataTypes</h3>
                <p>In programming, data type is an important concept.<br>

                    Variables can store data of different types, and different types can do different things.<br>
                    
                    Python has the following data types built-in by default, in these categories:<br>
                    
                    <b>Text Type:</b>	str<br>
                    <b>Numeric Types:</b>	int, float, complex<br>
                    <b>Sequence Types:</b>	list, tuple, range<br>
                    <b>Mapping Type:</b>	dict<br>
                    <b>Set Types:</b>	set, frozenset<br>
                    <b>Boolean Type:</b>	bool<br>
                    <b>Binary Types:</b>	bytes, bytearray, memoryview<br>
                    <b>None Type:</b>	NoneType</p>
                    <h3>Type Casting</h3>
                    <p>There may be times when you want to specify a type on to a variable. This can be done with casting. Python is an object-orientated language, and as such it uses classes to define data types, including its primitive types.<br>

                        Casting in python is therefore done using constructor functions:<br>
                        
                        int() - constructs an integer number from an integer literal, a float literal (by removing all decimals), or a string literal (providing the string represents a whole number)<br>
                        float() - constructs a float number from an integer literal, a float literal or a string literal (providing the string represents a float or an integer)<br>
                        str() - constructs a string from a wide variety of data types, including strings, integer literals and float literals</p>
            </div>
            <div id="topic11" class="hidden">
                <h3>Methods</h3>
                <p>Python has a set of built-in methods that you can use on strings.<br>

                    <b>Note:</b> All string methods return new values. They do not change the original string.</p>
                    <table class="datatable">
                        <tbody>
                            <tr>
                                <th style="width:20%">Method</th>
                                <th style="width:80%">Description</th>
                            </tr>
                            <tr>
                                <td>capitalize()</td>
                                <td>Converts the first character to upper case</td>
                            </tr>
                            <tr>
                                <td>casefold()</td>
                                <td>Converts string into lower case
                                </td>
                            </tr>
                            <tr>
                                <td>center()</td>
                                <td>Returns a centered string
                                </td>
                            </tr>
                            <tr>
                                <td>count()</td>
                                <td>Returns the number of times a specified value occurs in a string
                                </td>
                            </tr>
                            <tr>
                                <td>encode()</td>
                                <td>Returns an encoded version of the string
                                </td>
                            </tr>
                            <tr>
                                <td>endswith()</td>
                                <td>Returns true if the string ends with the specified value
                                </td>
                            </tr>
                            <tr>
                                <td>expandtabs()</td>
                                <td>Sets the tab size of the string
                                </td>
                            </tr>
                            <tr>
                                <td>find()</td>
                                <td>Searches the string for a specified value and returns the position of where it was found
                                </td>
                            </tr>
                            <tr>
                                <td>format()</td>
                                <td>Formats specified values in a string
                                </td>
                            </tr>
                            <tr>
                                <td>index()</td>
                                <td>Searches the string for a specified value and returns the position of where it was found
                                </td>
                            </tr>
                            <tr>
                                <td>isalpha()</td>
                                <td>Returns True if all characters in the string are in the alphabet
                                </td>
                            </tr>
                            <tr>
                                <td>isdigit()</td>
                                <td>Returns True if all characters in the string are digits
                                </td>
                            </tr>
                            <tr>
                                <td>islower()</td>
                                <td>Returns True if all characters in the string are lower case
                                </td>
                            </tr>
                            <tr>
                                <td>isupper()</td>
                                <td>Returns True if all characters in the string are upper case
                                </td>
                            </tr>
                            <tr>
                                <td>startswith()</td>
                                <td>Returns true if the string starts with the specified value
                                </td>
                            </tr>
                            <tr>
                                <td>split()</td>
                                <td>Splits the string at the specified separator, and returns a list
                                </td>
                            </tr>
                            <tr>
                                <td>strip()</td>
                                <td>Returns a trimmed version of the string
                                </td>
                            </tr>
                            <tr>
                                <td>lower()</td>
                                <td>Converts a string into lower case
                                </td>
                            </tr>
                            <tr>
                                <td>upper()</td>
                                <td>Converts a string into upper case
                                </td>
                            </tr>
                            <tr>
                                <td>swapcase()</td>
                                <td>Swaps cases, lower case becomes upper case and vice versa
                                </td>
                            </tr>
                
                        </tbody>
                    </table>
                
            </div>
            <div id="topic12" class="hidden">
                <h3>Python Lists:</h3>
                <p>Lists are used to store multiple items in a single variable.<br>

                    Lists are one of 4 built-in data types in Python used to store collections of data, the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.<br>
                    
                    Lists are created using square brackets:</p>   
                <i>thislist = ["apple", "banana", "cherry"]<br>
                    print(thislist)</i>
                <p>List items are ordered, changeable, and allow duplicate values.<br>

                    List items are indexed, the first item has index [0], the second item has index [1] etc.</p>
                <ul>
                    <li>
                        When we say that lists are ordered, it means that the items have a defined order, and that order will not change.

If you add new items to a list, the new items will be placed at the end of the list.
                    </li>
                    <li>The list is changeable, meaning that we can change, add, and remove items in a list after it has been created.
                    </li>
                    <li>To determine how many items a list has, use the len() function:                    </li>
                    <li>List items can be of any data type:                    </li>
                </ul>
                <h3>Python Collections</h3>
                <p>There are four collection data types in the Python programming language:</p>
                <ul>
                    <li><b>List</b> is a collection which is ordered and changeable. Allows duplicate members.
                    </li>
                    <li><b>Tuple</b>is a collection which is ordered and unchangeable. Allows duplicate members.
                    </li>
                    <li><b>Set</b> is a collection which is unordered, unchangeable*, and unindexed. No duplicate members.
                    </li>
                    <li><b>Dictionary</b> is a collection which is ordered** and changeable. No duplicate members.</li>
                </ul>
            </div>
            <div id="topic13" class="hidden">
                <centre>
                <h3>Introduction</h3>
                <p>The aim is to program, at a system level, using all the functionalities of operating systems, taking into account sequential and concurrent programming models.
                    Furthermore, the objective is also to understand the fundamental concepts underlying operating systems, with an emphasis on their mechanisms and algorithms, as well as the internal structure of the most relevant operating systems.</p>
                </centre>
                <h3>What is an operating system?</h3>
                <p>Operating System lies in the category of system software. It basically manages all the resources of the computer. An operating system acts as an interface between the software and different parts of the computer or the computer hardware. The operating system is designed in such a way that it can manage the overall resources and operations of the computer. 

                    Operating System is a fully integrated set of specialized programs that handle all the operations of the computer. It controls and monitors the execution of all other programs that reside in the computer, which also includes application programs and other system software of the computer. Examples of Operating Systems are Windows, Linux, Mac OS, etc.
                    
                    An Operating System (OS) is a collection of software that manages computer hardware resources and provides common services for computer programs. The operating system is the most important type of system software in a computer system.</p>
                    <h3>Used for?</h3>
                    <p>The operating system helps in improving the computer software as well as hardware. Without OS, it became very difficult for any application to be user-friendly. The Operating System provides a user with an interface that makes any application attractive and user-friendly. The operating System comes with a large number of device drivers that make OS services reachable to the hardware environment. Each and every application present in the system requires the Operating System. The operating system works as a communication channel between system hardware and system software. The operating system helps an application with the hardware part without knowing about the actual hardware configuration. It is one of the most important parts of the system and hence it is present in every device, whether large or small device.</p>

            </div>
            <div id="topic14" class="hidden">
                <p>An Operating System acts as a communication bridge (interface) between the user and computer hardware. The purpose of an operating system is to provide a platform on which a user can execute programs conveniently and efficiently.<br>

                    An operating system is a piece of software that manages the allocation of Computer Hardware. The coordination of the hardware must be appropriate to ensure the correct working of the computer system and to prevent user programs from interfering with the proper working of the system. <br>
                    
                    The main goal of the Operating System is to make the computer environment more convenient to use and the Secondary goal is to use the resources most efficiently. </p>
                    <h3>Why are operating systems used?</h3>
                    <p>Operating System is used as a communication channel between the Computer hardware and the user. It works as an intermediate between System Hardware and End-User. Operating System handles the following responsibilities:</p>
                    <ul>
                        <li>It controls all the computer resources.
                        </li>
                        <li>It provides valuable services to user programs.
                        </li>
                        <li>It coordinates the execution of user programs.
                        </li>
                        <li>It provides resources for user programs.
                        </li>
                        <li>It provides an interface (virtual machine) to the user.
                        </li>
                        <li>It hides the complexity of software.
                        </li>
                        <li>It supports multiple execution modes.
                        </li>
                        <li>It monitors the execution of user programs to prevent errors.
                        </li>
                    </ul>
                    <h3>Functions:</h3>
                    <p>
                        1.Memory Management<br>
                        2.Processor Management<br>
                        3.Device Management<br>
                        4.File Management<br>
                        5.User Interface or Command Interpreter<br>
                        6.Booting the Computer<br>
                        7.Security<br>
                        8.Control Over System Performance<br>
                        9>Network Management
                    </p>
                    <h3>Services Provided by an Operating System</h3>
                    <ul>
                        <li><b>User Interface:</b> Almost all operating systems have a user interface (UI). This interface can take several forms. One is a command-line interface(CLI), which uses text commands and a method for entering them (say, a keyboard for typing in commands in a specific format with specific options). Another is a batch interface, in which commands and directives to control those commands are entered into files, and those files are executed. Most commonly, a graphical user interface (GUI) is used. the interface is a window system with a pointing device to direct I/O, choose from menus, and make selections and a keyboard to enter text.</li>
                        <li><b>Program Execution</b>  The Operating System is responsible for the execution of all types of programs whether it be user programs or system programs. The Operating System utilizes various resources available for the efficient running of all types of functionalities.</li>
                        <li><b>Handling Input/Output Operations</b> The Operating System is responsible for handling all sorts of inputs, i.e., from the keyboard, mouse, desktop, etc. The Operating System does all interfacing most appropriately regarding all kinds of Inputs and Outputs. </li>
                        <li><b>Manipulation of file system:</b>The Operating System is responsible for making decisions regarding the storage of all types of data or files, i.e., floppy disk/hard disk/pen drive, etc. The Operating System decides how the data should be manipulated and stored.</li>
                        <li><b>Resource Allocation</b>The Operating System ensures the proper use of all the resources available by deciding which resource to be used by whom for how much time. All the decisions are taken by the Operating System.</li>
                    </ul>
            </div>
            <div id="topic15" class="hidden">
                <p>An Operating System performs all the basic tasks like managing files, processes, and memory. Thus operating system acts as the manager of all the resources, i.e. resource manager. Thus, the operating system becomes an interface between the user and the machine. It is one of the most required software that is present in the device. 

                    Operating System is a type of software that works as an interface between the system program and the hardware. There are several types of Operating Systems in which many of which are mentioned below. Let’s have a look at them.</p>
                    <h3>Types</h3>
                    <ul>
                        <li>Batch Operating System
                            </li>
                            <li>Multi-Programming System</li>
                            <li>Multi-Processing System</li>
                            <li>Multi-Tasking Operating System</li>
                            <li>Time-Sharing Operating System</li>
                            <li>Distributed Operating System</li>
                    </ul>
                    <h3>1.Batch operating system:</h3>
                    <img src="images/os1.webp"></img>
                    <h3>2.Multi-Programming operating system</h3>
                    <img src="images/os2.webp">
                    <h3>3.Multi-processing operating system</h3>
                    <img src="images/os3.webp">
                    <h3>4.Multi-Tasking operating system</h3>
                    <img src="images/os4.webp">
                    <h3>5.Time-sharing operating system</h3>
                    <img src="images/os5.png">
                    <h3>6.Distributed operating system</h3>
                    <img src="images/os6.webp">
                    <h3>7.Network operating system</h3>
                    <img src="images/os7.webp">
                    <h3>8.Real-Time operating system</h3>
                    <img src="images/os8.webp">
            </div>
            <div id="topic16" class="hidden">
                <p>The fundamental goal of an Operating System is to execute user programs and to make tasks easier. Various application programs along with hardware systems are used to perform this work. Operating System is software that manages and controls the entire set of resources and effectively utilizes every part of a computer. The figure shows how OS acts as a medium between hardware units and application programs.</p>
                <img src="images/os9.png">
                <h3>Need for operating system</h3>
                <p>1.OS as a platform for Application programs<br>
                2.Managing Input-Output unit<br>
                3.Multitasking<br>
            4.A platform for other software applications<br>
            5.Controls memory<br>
            6.Looks after system files<br>
            7.Provides Security
    </p>
    <h3>Operating system services</h3>
    <p>The main purpose of the operating system is to provide an environment for the execution of programs. Thus, an operating system provides certain services to programs and the users of those programs</p>
    <b>1. Program Execution</b>
    <p>The operating system provides a convenient environment where users can run their programs.
        The operating system performs memory allocation to programs, and load them into appropriate location so that they can execute. The users do not have to worry about all these tasks.</p>
        <b> I/O Operations</b>
        <p>In order to execute a program, it usually requires an I/O operation. For example, it may need to read a file and print the output.
            When all these I/O operations are performed users cannot control I/O devices.
            All I/O is performed under the control of the operating system.
            </p>
            <b>Communication</b>
            <p>The various processes executing on a system may need to communicate in order to exchange data or information.
                The operating system provides this communication by using a facility for message passing. In message passing packets of information are moved between processes by the operating system.</p>
            </div>
            <div id="topic17" class="hidden">
                <p>There are various types of Operating Systems used throughout the world and this depends mainly on the type of operations performed. These Operating Systems are manufactured by large multinational companies like Microsoft, Apple, etc. Let’s look at the few most commonly used OS in the real world:<br>

                    1.Windows<br>
                    2.UNIX<br>
                    3.LINUX<br>
                    4.BOSS<br>
                    5.SOLARIS</p>
                    <b>Windows</b>
                    <p>Generally referred to as Microsoft Windows, these OS are manufactured and developed by the tech-giant Microsoft and are the most commonly used OS for personal computers and to some extent in mobile phones or the Windows phone. Microsoft Windows is a collection of many graphics-oriented operating systems, first developed and launched in 1985 by the name Windows 1.0. When it started it had the aim to provide a graphical shell to the then-famous MS-DOS which had a character user interface, but it didn’t gain much popularity then. Slowly with the implementation of innovative features, the OS gained popularity and soon dominated the market of the Computer Industry, owing to its freedom of use and user-friendly environment. Let’s look at the advantages and disadvantages of using Microsoft Windows</p>
                    <b>Unix</b>
                    <p>Developed in 1970 in the Bell Lab research center UNIX became a multitasking and multiuser operating system, reaching numerous platforms for use. It was developed by Ken Thompson, Dennis Ritchie, and a few others and later AT&T licensed UNIX to the development of many variants of Unix, serving academic and business purposes at the University of California, Berkley Software Distribution, IBM, Microsoft, and Sun Microsystem. The OS is totally written in C language allowing it to serve in various platforms. It provides a set of simple and dedicated tools to perform a well-defined task using basic functions, shell scripting, and command languages. As of 2014, the Unix version with the largest installed base is Apple’s macOS. </p>
                    <b>Linux</b>
                    <p>Primarily derived from the concept of Unix, Linux became the most-prominent free and open-source OS available to everyone in the world. It is built around the Linux kernel and served for both desktop and server use. Linux was originally developed for personal computers based on the Intel x86 architecture but since then it was ported to more platforms than any other operating system. Linux has the largest installed base of all general-purpose operating systems. It is also the leading operating system on servers and other big iron systems such as mainframe computers, and the only OS used on TOP500 Supercomputers. The top Linux OS are Ubuntu, Fedora, OpenSUSE, RedHat, and many more. </p>
                    <b>solaris</b>
                    <p>This OS was originally developed by Sun Microsystems and is a type of Unix OS. Solaris was developed as proprietary software. Solaris is known for its scalability, especially on SPARC systems, and for originating many innovative features such as DTrace, ZFS, and Time Slider. It is registered as compliant with the Single UNIX Specification. As of today, Solaris is supported by HP, Dell, Intel and Fujitsu Siemens architecture. OpenSolaris is the available open-source version of Solaris OS. Oracle Solaris 10 is the latest version of Solaris OS. </p>
                    <b>Boss</b>
                    <p>It stands for Bharat Operating System Solutions designed specifically by India for Indians. It was developed by C-DAC(Centre for Development of Advanced Computing), Chennai, to benefit the Free/Open Source Software in India. It has an enhanced Desktop Environment integrated with multiple Indian language support and other software. This project has been approved, supported, and endorsed by the Government of India. The OS is the product of Linux Distribution and has been derived from Debian Linux. BOSS Linux provides advanced features such as a web server, proxy server, database server, mail server, network server, file and print server, SMS Service, and many more. The latest versions are called BOSS 5.0 (ANOKHA) and BOSS 6.0 (ANOOP). </p>
                    
            </div>
            <div id="topic18" class="hidden">
                <h3>What is machine learning?</h3>
                <p>Learning is a fundamental concept when we quantify intelligence . For human beings, learning is the basis of everything because no one is born taught. The same applies to any machine, which is why the Machine Learning concept was created . Starting from psychology and biology, the main objective of this area of ​​study is to mimic the model of human thought.</p>
                <i>"Learning is any process by which a system improves performance from experience" - Herbert Simon</i>
                <p>But how is it possible to make a machine reason like a human being? Well, it makes sense to start with the concept of Artificial Intelligence , which, as already mentioned in the respective UC, states that all our actions have several different components behind them. All of our reasoning, before carrying out anything, goes through three main stages (stages that we seek to mirror using computational machines):                </p>
                <ul>
                    <li>
                        <p style="background-color: #50edf8;">Reason:</p><p> ideally, we seek to have a justification for the action we are taking. For example, when making a move in a chess game, we have to know why we are moving the piece to a given place, why we are doing it and the consequences (positive and negative) that the move will bring us; </p></li>
                    <li>  <p style="background-color: #50edf8;">Adaptability:</p><p>like a human being, a machine must be able to learn from its actions, whether positive or negative. Returning to the example of the chess game, when we make a move we are able to understand the expected effects (and not only) of it, thus being able to understand whether it is a good move or not, whether there are better alternatives, among other details. As we will see in this UC, this is also how machines learn!</p></li>
                     <li>   <p style="background-color: #50edf8;">Creativity:</p><p> creativity in machines tries to mirror human emotions, being a highly sought after area today. We intend to find solutions with greater intelligence without just being based on reasoning - we want to find solutions that are more "outside the box" , therefore. A good chess player does not always play the "best move" (statistically speaking), but also tries to make moves that surprise the opponent.</p></li>
                </ul>
                        <h4>Systems</h4><p>We can now focus attention on the adaptability part - as we know, it corresponds to a sub-area of ​​Artificial Intelligence that can be registered through a system over time , or even through multiple systems registered together with experience observations . We can, from this, extract that whenever we intend to learn we need a system : that is, we need a set of elements, organized with a common objective, influenced by their environment (if it is open, of course). A system is described by its structure , purpose and function .</p>
                        <p>These systems are everywhere, and they can be systems:</p>
                        <ul>
                            <li>Biological</li>
                            <li>Ecological</li>
                            <li>Corporate</li>
                            <li>Mechanics</li>
                            <li>Digital</li>
                            <li>Quantum</li>
                            <li>Hybrids</li>
                            <li>Astrophysists</li>
                            <li>Urban</li>
                        </ul>
                        <p>It is through these systems, as mentioned above, that our machines learn : the machines observe the system (and all the objects it inhabits), recording a whole range of types of data, thus seeking, using experience, to learn more about the system and extract the information you want from it! This learning or recognition of data is what helps us understand the behavior of a given system ( descriptive learning ) and supports future decisions and recommendations ( predictive learning ).</p>
                        <p>Machine Learning and Data Science are two terms that are particularly in vogue recently. Let's try to distinguish them:</p>
                        <table class="datatable">
                            <tbody>
                                <tr>
                                    <th style="width:50%">Machine Learning</th>
                                    <th style="width:50%">Data Science</th>
                                </tr>
                                <tr>
                                    <td>Serves to improve decisions made based on acquired data</td>
                                    <td>It serves to discover what we don’t know from the data acquired</td>
                                </tr>
                                <tr>
                                    <td>Set of concepts, principles and computational methods</td>
                                    <td>Non-trivial extraction of implicit, important and previously unknown knowledge</td>
                                </tr>
                                <tr>
                                    <td>Part of statistics, algebra, mathematics and algorithms</td>
                                    <td>Parte de Machine Learning</td>
                                </tr>
                            </tbody>
                        </table>
                    <p>Looking now at the distinction between Machine Learning and the area of ​​Artificial Intelligence, the main difference is in the inputs and outputs of the respective programs: in artificial intelligence, a set of data and a heuristic function are given as input , with a move/ path/sort/etc. In Machine Learning , the AI ​​"output" is precisely one of the inputs (along with the data): the models will seek to learn from what is provided to them, thus seeking to return an intelligent program/model, capable of making correct classifications/predictions .</p>
                    <h4>Learning:</h4>
                    <p>However, how can these machines learn? Well, there are three main ways:</p>
                    <b>Supervised Learning:</b><p> with a teacher or through training data and desired outputs, i.e. labels, quantities or structures;</p>
                    <b>Unsupervised Learning:</b><p>without a teacher and through training data without desired outputs, the aim is to "group" the data into different categories, thus managing to receive a given instance and say "this instance must belong to that category";</p>
                    <b>Reinforcement Learning:</b><p>without a designated teacher to give negative or positive examples, through rewards and penalties observed through the sequence of actions within a specific environment.</p>
                    <p>The learning process is also characterized by being carried out in different stages. The first stage, data pre-processing , refers to data acquisition, integration and cleaning: that is, outlier detection , data normalization, dimension reduction, among other treatments.
                        Next, we move on to the data mining stage , which is common in Machine Learning . Here, we seek to observe a dataset , finding local associations or patterns that satisfy significant statistical criteria (minimum number of observations in order to contradict expectations, to remove outliers ), and discriminatory power of qualitative targets or correlation between criteria.
                        Finally, we have a data post-processing phase , which serves to extract information and knowledge ( descriptive stance ) as well as the learned models ( predictive stance ), thus being able to interpret and validate the results and consolidate the knowledge discovered.</p>
            </div>
            <div id="topic19" class="hidden">
                <p>Data science is the area of ​​engineering dedicated to transforming data into information. This is done through a classification model that manipulates concepts, which represent the data. In order to create a model that recognizes any entity, it is necessary to collect examples of that same entity, as well as examples that do not represent that entity (for example, a duck and a rubber duck).</p>
                <h3>Aim</h3>
                <p>The objective of classification is to automatically identify the set of variables satisfied by instantiations of the concept to be learned and that are not satisfied by other entities, the so-called relevant variables. By being able to classify entities, based on these variables, the model is now able to classify the instance as belonging to a class .</p>
                <h3> Labeled Dataset</h3>
                <p>To learn any concept, you need a set of data described by a number
                    𝐷
                    Dof variables of any type, as well as a symbolic variable, the class or label, which indicates the class represented by the variables. This set of data is called a labeled dataset , as the data is labeled.
                    
                    </p>
                <h3>Model</h3>
                <p>After providing a set of training data to the learning algorithm, it returns a model. Given an object, the model classifies it with a label.

                    We define the model as a function
                    𝐹
                    :
                    𝐴
                    1
                    ×
                    𝐴
                    2
                    ×
                    .
                    .
                    .
                    ×
                    𝐴
                    𝐷
                    ↦
                    𝐶
                    F:A 
                    1
                    ​
                     ×A 
                    2
                    ​
                     ×...×A 
                    D
                    ​
                     ↦Cthat maps the
                    𝐷
                    Dvariables in labels
                    𝐶
                    C. This function is the model or classifier . With this model, we can determine the label of any record not yet observed.</p>
                    <h3>Learning Algorithm</h3>
                    <p>In order to automatically learn these mapping functions, machine learning algorithms are used that analyze the records and try to create a model that satisfies all the records contained in the data. The algorithm then looks for the function that minimizes the classification error, that is, the number of incorrectly classified records in the data set.</p>
            </div>
            <div id="topic20" class="hidden">
                <p>For the future study of various learning algorithms, some concepts of probability and statistics are needed.</p>
                <h3>Variables</h3>
                <p>In the task of data analysis, we can deal with one or more variables. These variables can be categorical or qualitative (such as the class of an observation), or they can be numerical , describing quantities. This last type of variables is subdivided into continuous variables and discrete variables .

                    Continuous variables can be turned into discrete variables through a discretization process (for example, transforming heights into height intervals).</p>
                <h3>Data Exploration</h3>
                <p>This is an essential step to knowing and learning from the dataset. Some important metrics for categorical variables are mode , frequency and probability . Numerical data can be represented and studied through a histogram, through quantiles , and probability functions .

                    The fitting process corresponds to learning parameters of a probability function through the data set.</p>
                <h2>Statistics for one variable</h2>
                <h4>Location Metrics</h4>
                <p>Location metrics allow us to locate data. Such metrics include the mean , mode , harmonic mean and the trimmed mean (which corresponds to the sample mean, discarding some of the observations at the extremes of the probability function).

                    m
                    It is
                    ˊ
                    harm day
                    O
                    ˊ
                    nica
                    =
                    𝑛
                    ∑
                    𝑖
                    =
                    1
                    𝑛
                    1
                    𝑥
                    𝑖
                    m 
                    It is
                    ˊ
                     harm day 
                    O
                    ˊ
                     nica= 
                    i = 1
                    ∑
                    n
                    ​
                      
                    x 
                    i
                    ​
                     
                    1
                    ​
                     
                    n
                    ​
                </p>
                <h4>Dispersion Metrics</h4>
                <p>Dispersion measures quantify the variability present in the data. We define the standard deviation as the square root of the variance . When quantifying sample variability, it is common to overestimate variability, as it is not possible to know the entire population.

                    𝜎
                    populace
                    w
                    ¸
                    The
                    ˜
                    O
                    =
                    1
                    𝑛
                    ∑
                    𝑖
                    =
                    1
                    𝑛
                    (
                    𝑥
                    𝑖
                    −
                    𝑥
                    ˉ
                    )
                    two
                    σ 
                    populace 
                    w
                    ¸
                    ​
                      
                    The
                    ˜
                     O
                    ​
                     = 
                    n
                    1
                    ​
                      
                    i = 1
                    ∑
                    n
                    ​
                     ( x 
                    i
                    ​
                     − 
                    x
                    ˉ
                     ) 
                    two
                     
                    ​
                     
                    𝜎
                    sample
                    =
                    1
                    𝑛
                    −
                    1
                    ∑
                    𝑖
                    =
                    1
                    𝑛
                    (
                    𝑥
                    𝑖
                    −
                    𝑥
                    ˉ
                    )
                    two
                    σ 
                    sample
                    ​
                     = 
                    n−1
                    1
                    ​
                      
                    i = 1
                    ∑
                    n
                    ​
                     ( x 
                    i
                    ​
                     − 
                    x
                    ˉ
                     ) 
                    two
                     
                    ​
                </p>
                <h4>Outliers</h4>
                <p>Outliers correspond to observations that take unusual values. The mean and variance metrics are based on averages, so they are sensitive to the presence of outliers in the data.

                    In order to detect the presence of outliers , it is common to use the interquartile range metric , defined as the difference between the highest value present in the third quartile and the lowest value in the first quartile.<br>
                    
                    IQR
                    =
                    max
                    ⁡
                    𝑥
                    {
                    𝑄
                    3
                    }
                    −
                    min
                    ⁡
                    𝑥
                    {
                    𝑄
                    1
                    }
                    IQR= 
                    x
                    max
                    ​
                     { Q 
                    3
                    ​
                     }− 
                    x
                    min
                    ​
                     { Q 
                    1
                    ​
                     }<br>
                    Observations that do not belong to the range below are considered outliers .<br>
                    
                    [
                    𝑄
                    1
                    −
                    1.5
                    ×
                    IQR
                    ,
                    𝑄
                    3
                    +
                    1.5
                    ×
                    IQR
                    ]
                    [ Q 
                    1
                    ​
                     −1.5×IQR ,Q 
                    3
                    ​
                     +1.5×IQR ]<br>
                    Boxplots are useful for visualizing the presence of outliers .</p>
                    <h3>Statistics for multiple variables</h3>
                    <p>When treating more than one variable, the interest is in discovering the correlation between each pair of variables. If two variables are highly correlated, we are dealing with redundant variables . Therefore, we chose the variable with the greatest variability, as it has the greatest discriminative power .</p>
                    <p>Covariance allows you to describe the relationship between a pair of variables.</p>
                    <h4>Pearson,s correlation</h4>
                    <p>Pearson's correlation coefficient allows you to quantify the linear correlation between two variables. It should be noted that the variables must be numerical and the coefficient is only capable of identifying linear correlations. Even if the variables are correlated in another way (e.g. quadratically), the coefficient is not able to capture this correlation.</p>
                    <p>The value of
                        𝑟
                        rvaries in the range
                        [
                        −
                        1
                        ,
                        1
                        ]
                        [ − 1 ,1 ]. A positive sign indicates a direct correlation (if the value of
                        𝑦
                        1
                        y 
                        1
                        ​
                         increases, the value of
                        𝑦
                        two
                        y 
                        two
                        ​
                         also increases) and a negative sign indicates an inverse correlation (if the value of
                        𝑦
                        1
                        y 
                        1
                        ​
                          increases, the value of
                        𝑦
                        two
                        y 
                        two
                        ​
                         decreases). The null value indicates that the two variables are not related.</p>
                    <h3>Spearman Rank</h3>
                    <p>The Spearman rank metric allows you to evaluate the correlation (not just linear) between two variables.

                        The rank of each of the variables is calculated , and the Pearson correlation coefficient of the calculated ranks is then calculated .
                        
                        The calculation of ranks begins with the ascending ordering of the variable values. Then, a rank is assigned to each value, sequentially. If there are repeated values, the rank of that value will be the average of the positions that the values ​​occupy.</p>
            </div>
            <div id="topic21" class="hidden">
                <h3>Overfitting</h3>
                <p>When a model adapts too much to the training data, failing to successfully label objects that have not yet been observed, we are dealing with an overfitting model .<br>

                    This phenomenon occurs because the training data, despite containing the regularities of the population, also contains sampling errors . When fitting the model to the data, the algorithm cannot identify these irregularities. The model is then biased towards the training data , memorizing the training data rather than learning it.<br>
                    
                    In order to avoid this phenomenon, we can divide the training data into several subsets , as long as they all maintain the original distribution of the data . Once the partition is carried out, some of the subsets are used to learn and train the model and we use others to choose the best model found, the one that presents the best performance.<br>
                    
                    Some strategies to avoid overfitting include:</p>
                    <ul>
                        <li>According to the Occam's Razor principle , in the presence of two models with similar performance, choose the simpler one.</li>
                        <li>Use training and testing sets that are independent of each other.      </li>
                        <li>Train using the training set and choose the best model based on a validation set.</li>
                    </ul>
                <h3>Training strategies</h3>
                <h4>Hold out</h4>
                <p>When several thousand pieces of data are available, we divide this set into two subsets (whenever possible to maintain the original data distribution): the training set and the test set , normally in a proportion
                    70
                    /
                    30
                    70/30. However, we end up with a biased estimate if we choose the model that performs best. To solve this, the validation set is created from the test subset, used to choose the best of the models. Finally, the accuracy of the model is evaluated on the test set.</p>
                    <h4>Leave-one-out</h4>
                    <p>This training strategy is used when we have few records to learn from. Usually, the test set is made up of just one record , using the rest of the records to train the model. This process is repeated for each of the records, creating as many models as there are records . In the end, the model's performance is evaluated with the number of correctly classified records</p>
                    <h4>Cross-validation</h4>
                    <p>It is a training strategy used when we have access to a few thousand records and cannot guarantee the maintenance of the distribution of the data set when dividing it.

                        Through the total data set,
                        𝑘
                        kmutually exclusive subsets , with similar sizes, maintaining the class distribution of the original data ( stratified cross-validation ).
                        
                        We use each set to evaluate the model learned by others
                        𝑘
                        −
                        1
                        k−1 subsets.</p>
                        <p>D=D 
                            1
                            ​
                             ∪D 
                            two
                            ​
                             ∪D 
                            3
                            ​
                             ∪D 
                            4
                            ​
                            </p>
                    <ul>
                        <li>Train yourself in
                            𝐷
                            two
                            ∪
                            𝐷
                            3
                            ∪
                            𝐷
                            4
                            D 
                            two
                            ​
                             ∪D 
                            3
                            ​
                             ∪D 
                            4
                            ​
                             and validated in
                            𝐷
                            1
                            D 
                            1</li>
                            <li>Train yourself in
                                𝐷
                                1
                                ∪
                                𝐷
                                3
                                ∪
                                𝐷
                                4
                                D 
                                1
                                ​
                                 ∪D 
                                3
                                ​
                                 ∪D 
                                4
                                ​
                                 and validated in
                                𝐷
                                two
                                D 
                                two
                                ​
                                 .</li>
                        <li>Train yourself in
                            𝐷
                            1
                            ∪
                            𝐷
                            two
                            ∪
                            𝐷
                            4
                            D 
                            1
                            ​
                             ∪D 
                            two
                            ​
                             ∪D 
                            4
                            ​
                             and validated in
                            𝐷
                            3
                            D 
                            3
                            ​
                             .</li>
                        <li>Train yourself in
                            𝐷
                            1
                            ∪
                            𝐷
                            two
                            ∪
                            𝐷
                            3
                            D 
                            1
                            ​
                             ∪D 
                            two
                            ​
                             ∪D 
                            3
                            ​
                             and validated in
                            𝐷
                            4
                            D 
                            4
                            ​
                             .</li>
                    </ul>
                    <h3>Assessment</h3>
                    <p>Evaluating the performance of models is an important task, as it allows us to say which of them is the most suitable to use.

                        With several possible models that fit the data set, we can often only choose one. But which one to choose? This is the model selection problem . In order to solve it, several properties of the models in question are analyzed, with the aim of finding the one that, in fact, best adapts to the data.</p>
                    <h3>precision,Recall,Fallout</h3>
                    <p>In order to solve the problems described above, more measures are introduced.

                        Recall
                        =
                        TP
                        TP
                        +
                        FN
                        Recall= 
                        TP+FN
                        TP
                        ​
                         
                        Specificity
                        =
                        TN
                        TN
                        +
                        FP
                        Specificity= 
                        TN+FP
                        TN
                        ​
                         
                        Precision
                        =
                        TP
                        TP
                        +
                        FP
                        Precision= 
                        TP+FP
                        TP
                        ​
                         
                        Recall or sensitivity indicates the percentage of positive observations classified as positive .
                        Fallout or specificity indicates the percentage of negative observations classified as negative .
                        Precision indicates the percentage of positive observations among the observations classified as positive .
                        
                        A high recall value without good precision does not give us confidence about the quality of the classification. It is possible to obtain a high recall value by classifying all records as positive. However, the accuracy value will be quite low. On the other hand, by classifying just one record as positive, we obtain maximum precision but a low recall value . When evaluating a model, we must take these two measures into account. To do this, we define a new measure, the F-measure or balance measure, given by a weighted harmonic mean.</p>
            </div>
            <div id="topic22" class="hidden">
                <h3>What are decision trees?</h3>
                <p>Decision trees are an original decision model of symbolic machine learning . These are represented by a graph without cycles , where a node represents a test of a value assumed by a variable . Thus, each node corresponds to a logical proposition. Each node has as many edges, or branches, as the variable can take on. The terminal nodes are leaves and represent the values ​​assumed by the target variable, the class. Each branch can be seen as a conjunction of propositions, hence its origin in symbolist machine learning .</p>
                <h3>Continuous variables</h3>
                <p>The model was also adapted to deal with numerical variables. Each node tests for inequalities rather than testing the value taken by the variable. There is a branch in which inequality occurs and another in which it does not occur. Thus, each node creates a partition of the space of possible values .</p>
                <h3>Training Algorithms</h3>
                <p>Given the recursive nature of trees in which a node can be a leaf or a root of another tree, the algorithms that operate on this type of structure are also recursive.

                    When building the decision tree, if all records belong to the same class, a leaf is created, labeled with that class . Otherwise, a node is created with the best variable to discriminate between classes (the most relevant variable). Then, the data set is divided according to the choice made, the branches that represent each of the possible values ​​are created and the process is repeated for each of the branches.</p>
                    <h3>Choose the best variable</h3>
                    <p>The choice of the next variable to consider, in the process of building a decision tree, is extremely important as it conditions the final size of the tree. There are several metrics to choose from. However, they all have the following properties:</p>
                    <p>The most commonly used metric is Shannon entropy , based on information theory.</p>
                    <h3>Surprise and information</h3>
                    <p>An intuitive definition of surprise is based on the fact that the lower the probability of an event occurring, the greater our surprise at the occurrence of that event. We define surprise of an event
                        𝑘
                        kas the inverse of the probability of its occurrence. For example, the event " Man bites dog. " evokes more surprise than " Dog bites man. ".</p>
                        <p>I 
                            i
                            ​
                             =lo g 
                            two
                            ​
                             ( s 
                            k
                            ​
                             )=−lo g 
                            two
                            ​
                             ( p ( x 
                            k
                            ​
                             ) )</p>
                        <h3>Pruning</h3>
                        <p>The recursive process of building a decision tree continues until a pure node is generated, which tends to make trees quite large. High depth or branching of the tree can be caused by the presence of noise in the data . These occurrences often lead to the phenomenon of overfitting .

                            The pruning process, or pruning , is an approach to prevent overfitting . This makes the trees smaller, with the aim of maximizing their performance on previously unobserved data. Trees can be pruned a priori or a posteriori .</p>

            </div>
            <div id="topic23" class="hidden">
                <h3>Capitalism</h3>
                <p>Most current economies are capitalist (also called Market Economies).<br>

                    In capitalism, the main form of economic organization is the company . Private owners hire labor in order to produce goods and/or services , which they then sell on markets with the aim of maximizing profit .<br>
                    
                    There are other forms of economic organization that coexist with companies, but are not companies, such as:</p>
                    <ul>
                        <li>Family or individual production (do not hire third parties)</li>
                        <li>Non-profit organizations (their goal is not to make a profit)
                        </li>
                        <li>Cooperatives (labor is not hired, it is done by the members of the cooperative)
                        </li>
                        <li>Government bodies (do not have profit as their objective; capital goods are public)
                        </li>
                    </ul>
                    <p>some key concepts are</p>
                    <ul>
                        <li>Private Property : an asset whose owner has the right to exclude others from its use and to exchange it.</li>
                        <li>Capital Goods : resources necessary for the production of other goods or services. They are not labor but are durable assets or assets with an associated cost (eg equipment, buildings, etc.).</li>
                        <li>Markets : Form of exchanging goods and/or services through directly reciprocal transfers, for mutual benefit. Both theft and taxation are not considered markets.</li>
                    </ul>
                    <h3>Opportunity cost</h3>
                    <p>Sometimes we come across situations where we have to choose between two or more alternatives.

                        The opportunity cost of an action is the benefit of the next best alternative action (which we chose not to take).
                        
                        We compare our actions based on economic cost , that is, the sum of the monetary cost and the opportunity cost. In other words, the cost of an action is the cost of doing the action itself, but what we lose by not doing the alternative.</p>
                        <h3>Supply and demand</h3>
                        <p><b>BREAKEVEN PRICE</b><br>

                            The equilibrium price corresponds to the point on the supply and demand graph where the supply and demand curves intersect (take the same value).<br>
                            
                            The equilibrium quantity is the quantity corresponding to the equilibrium price.
                            
                            The supply and demand curve expand when, for the same price, quantity increases and contract when, for the same price, quantity decreases .</p>
            </div>
            <div id="topic24" class="hidden">
                <h3>Components of GDP</h3>
                <p>What counts for GDP?</p>
                <ul>
                    <li>
                        Consumption (
𝑊
W): Expenses on goods and services
                    </li>
                    <li>Investment (
                        𝐼
                        I): Expenditure on new capital goods</li>
                    <li>Government Spending (
                        𝐺
                        G): Government expenditure on goods and services (excluding transfers to avoid double counting)</li>
                    <li>Net exports, that is, exports (
                        𝑋
                        X) fewer imports (
                        𝑀
                        M)</li>
                        <i>GDP=W+I+G+X−M</i>
                    <p>In most countries, private consumption (
                        𝑊
                        W) represents the largest share of GDP.</p>
                    <h3>Innovation</h3>
                    <p>Innovation is the invention and diffusion of new products or production methods.

                        It can be one of two types:<br>
                        
                        Process Innovation : Producing a good that already exists more efficiently, in order to reduce its cost.<br>
                        Product Innovation : Producing a new good at an attractive price.<br>
                        Innovations can be radical , if they are very different from what already exists, or incremental , if they are improvements to what already exists.
                        
                        An innovation has initial costs, which may or may not be recovered through innovation rents , that is, the profit obtained until the innovation is copied by others.
                        
                        </p>
                </ul>
            </div>
            <div id="topic25" class="hidden">
                <h3>Inflation</h3>
                <p>Inflation corresponds to the generalized rise in price levels in an economy.

                    But how can we measure inflation?<br>
                    
                    The Consumer Price Index (CPI) measures the general level of prices that consumers pay for goods and services (including taxes), based on a "representative basket of consumer goods".
                    
                    A common measure of inflation is the change in the CPI.</p>
                    <ul>
                        <li>Nominal GDP : Value of production at current prices</li>
                        <li>Real GDP : Value of production at constant prices for the year chosen as the base year</li>
                    </ul>
                    <p>The GDP deflator is another measure of inflation. It corresponds to the price level for domestic production and can be calculated using:</p>
                    <i>GDP deflator= 
                        Real GDP
                        Nominal GDP
                        ​
                         ×100</i>
                    <ul>
                        <li>Zero inflation : The price level is constant over a certain period of time (eg year after year, semester after semester, etc.).</li>
                        <li>Deflation : Generalized drop in prices (opposite of inflation).</li>
                        <li>Disinflation : Decrease in the inflation rate .</li>
                        <li>Underlying Inflation ( Core Inflation ) : Measure of inflation that excludes transitory or temporary price volatility.</li>
                    </ul>
            </div>
        </div>
    </div>
        <!-- Popup structure -->
        <div id="overlay"></div>
        <div id="popup">
            <h2>Play for a while?</h2>
            <p>You've been browsing for a while. Would you like to take a break and play a game?</p>
            <button id="yesBtn">Yes</button>
            <button id="noBtn">No</button>
        </div>
        
        <script>
            document.addEventListener('DOMContentLoaded', (event) => {
                // Function to show the popup
                function showPopup() {
                    console.log("Popup should be displayed now.");
                    document.getElementById('overlay').style.display = 'block';
                    document.getElementById('popup').style.display = 'block';
                }
    
                // Event listeners for buttons
                document.getElementById('yesBtn').addEventListener('click', function() {
                    window.location.href = 'games/game.html';
                });
    
                document.getElementById('noBtn').addEventListener('click', function() {
                    document.getElementById('overlay').style.display = 'none';
                    document.getElementById('popup').style.display = 'none';
                });
    
                // Show popup after 30 minutes (30 * 60 * 1000 ms)
                setTimeout(showPopup, 5 * 1000);  // Change to 30 * 60 * 1000 for 30 minutes
            });
        </script>
    

    <script>
        function getQueryParameter(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        function showTopics(course) {
            // Hide all topic lists
            document.querySelectorAll('.topics ul').forEach(function(ul) {
                ul.classList.add('hidden');
            });
            // Show the selected topic list
            document.getElementById(course).classList.remove('hidden');
        }

        function showContent(topic) {
            // Hide all content divs
            document.querySelectorAll('.content div').forEach(function(div) {
                div.classList.add('hidden');
            });
            // Show the selected content
            document.getElementById(topic).classList.remove('hidden');
        }

        // Get the course parameter from URL and show corresponding topics
        const course = getQueryParameter('course');
        if (course) {
            showTopics(course);
        }
    </script>
</body>
</html>

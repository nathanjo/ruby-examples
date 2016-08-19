# Ruby Examples

## Description

Ruby examples

Some highlights:

* Ruby gem
* Rspec
* Nokogiri (for HTML)

# Bank Notes

## Description

Develop a system that would simulate the release of bank notes when a customer make a withdrawal at an ATM.
No Frameworks allowed.

## Requirements

The basic requirements are the following:

- The machine would always provide the lowest possible number of notes;
- You can always withdraw the requested amount using the available notes;
- Customer balance is infinite;
- The amount of bank notes is infinite;
- This should be a commandline application that can accept input.
- Error in input should be filtered.

Bank notes available are the following:

P100.00, P50.00, P20.00 and P10.00

## Examples

Entry : 30.00
Result: [ 20.00, 10.00 ]

Entry: 80.00
Result: [ 50.00, 20.00, 10.00 ]

Entry : 125.00
Result: throw NoteUnavailableException

Entry: -130.00
Result: throw InvalidArgumentException

Entry: NULL
Result: [Empty Set]

## Usage

Example:

```
./bank/atm.rb 30
```

Output

```
20.00, 10.00
```

## Screenshots

Example
![Screenshot-Example](https://www.evernote.com/l/AOs9S-tXThVInbLTgsVmHrZ_TfZ3V5VmMF0B/image.png)

Test
![Screenshot-test](https://www.evernote.com/l/AOu2W2n0EipFIbiFWaqPLBrB3sQViqTlBT4B/image.png)


# Manual Array Sorting

## Description

Given a disorderly group of integers, positive or negative numbers, divide the list into ordered groups according to the range specified:
Please note: The sorting algorithm is part of the solution, built-in functions is not allowed.
This should be a commandline application that can accept input.

## Requirements

Examples:

Range : 10,
Set Number : [10 , 1, -20 , 14, 99, 136, 19, 20, 117, 22 , 93, 120, 131]
Result: {[ -20 ], [ 1, 10 ], [ 14, 19, 20 ], [ 22 ], [ 93, 99 ], [ 117, 120 ], [ 131, 136 ]}

Range : 15,
Set Number : [10 , 1, -20 , 14, 99, 136, 19, 20, 117, 22 , 93, 120, 131]
Result: {[ -20 ], [ 1, 10, 14 ], [ 19, 20, 22 ], [ 93, 99 ], [ 117, 120 ] [ 131 ] [ 136 ]}

Range : 15 ,
Set Number : [10 1 A, 14, 99, 133, 19, 20, 117, 22, 93, 120, 131]
Result: throw InvalidArgumentException

Range : NULL,
Set Number : []
Result: [Empty Set]

## Usage

Example:

```
./disorder_group/run.rb
```

```
Enter Range
15
```

```
Set Number
[10 , 1, -20 , 14, 99, 136, 19, 20, 117, 22 , 93, 120, 131]
```

```
Result: [[-20], [1, 10, 14], [19, 20, 22], [93, 99], [117, 120], [131], [136]]
```

## Screenshots

Example
![Screenshot-Example](https://www.evernote.com/l/AOv7n1JjKkRIZ7vUOX5RpfrWTLyAneWd5scB/image.png)


# HTML Search

## Description

Develop an solution that would post a variable to this url: http://example.com/search.php, the variable name is "q". Where "q" is a search parameter, pass the value "airplane pilot". Once able to simulate the posting, assume that you will get a return of the following:

```
<html>
<head>
<title>result</title>
</head>
<body>
<div class="content">
<form method="post" action="">
<input type="text" name="q" value="">
<input type="submit">
</form>
<br>
<div id="12wiijewo">
  <h1>Philippine Airlines</h1>
  <p>Bacon ipsum dolor amet ground round doner filet mignon chicken salami beef hamburger turkey ball tip shoulder ribeye jowl.</p>
  <a href="http://somerandomurl1.com/">link</a>
</div>
<div id="cwjdncw23">
  <h1>cathay pacific</h1>
  <p>Porchetta landjaeger pork loin alcatra kielbasa andouille fatback turkey boudin swine.</p>
  <a href="http://somerandomurl2.com/">link</a>
</div>
<div id="qwe9d9wdj">
  <h1>cebu pacific</h1>
  <p>Strip steak tri-tip turducken alcatra venison beef ribs.</p>
  <a href="http://somerandomurl3.com/">link</a>
</div>
<div id="12kqdwkld">
  <h1>jetair</h1>
  <p>Ground round prosciutto jerky strip steak cow jowl pastrami tenderloin beef ribs alcatra chicken pork chop.</p>
  <a href="http://somerandomurl4.com/">link</a>
</div>
<div id="21kjdas3">
  <h1>tiger airlines</h1>
  <p>Spare ribs alcatra leberkas chuck. Salami meatball pork belly, tongue swine alcatra capicola pig frankfurter.</p>
  <a href="http://somerandomurl5.com/">link</a>
</div>
</div>
</body>
</html>
```

## Requirements

* top 3 results.
* the <p>...</p> decription of the result "jetair".

## Usage

Example:

```
./examples/search/search.rb "jetstar"
```

## Screenshots

![Screenshot-example](https://www.evernote.com/l/AOu4GVUu5tRAfo7Wz3BB5sQY4yfqCIIRxAwB/image.png)

## Tests

![Screenshot-tests](https://www.evernote.com/l/AOsOPyF3wgpNyJ9uyDAd6NHlSHYmQ-X6e6AB/image.png)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/examples.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


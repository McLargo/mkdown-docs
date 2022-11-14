# REGEX

Regex is short for Regular Expression. It helps to match, find or manage text. Start by typing OK in the Regex field to proceed to the first step and access the more detailed description.

## What is Regular Expressions Regex?

Regular Expressions are a string of characters that express a search pattern. Often abbreviated as Regex or Regexp. It is especially used to find or replace words in texts. In addition, we can test whether a text complies with the rules we set.

For example, let's say you have a list of filenames. And you only want to find files with the pdf extension. Following typing an expression `^\w+\.pdf$` will work. The meaning of the definitions in this expression will become clearer as the steps progress.

## Basic Matchers
The character or word we want to find is written directly. It is similar to a normal search process. For example, to find the word curious in the text, type the same.

The period `.` allows selecting any character, including special characters and spaces.

### Character Sets [abc]
If one of the characters in a word can be various characters, we write it in square brackets `[]` with all alternative characters. For example, to write an expression that can find all the words in the text, type the characters `a, e, i, o, u` adjacently within square brackets `[]`.

### Negated Character Sets [^abc]
To find all words in the text below, except for ber and bor, type e and o side by side after the caret `^` character inside square brackets `[]`.

### Character Sets: Alphanumeric Range
Letter Range `[a-z]`

To find the letters in the specified range, the starting letter and the ending letter are written in square brackets `[]` with a dash between them `-`. It is case-sensitive. Type the expression that will select all lowercase letters between `e` and `o`, including themselves.

### Character Sets: Digit Range
Number Range `[0-9]`

To find the numbers in the specified range, the starting number and the ending number are written in square brackets `[]` with a dash `-` between them. Write an expression that will select all numbers between 3 and 6, including themselves.

## Repetitions

Some special characters are used to specify how many times a character will be repeated in the text. These special characters are the plus `+`, the asterisk `*`, and the question mark `?`.

### Repetitions: Asterisk
Asterisk `*`

We put an asterisk `*` after a character to indicate that the character may either not match at all or can match many times. For example, indicate that the letter `e` should never occur in the text, or it can occur once or more side by side.

### Repetitions: The Plus
Plus Sign `+`

To indicate that a character can occur one or more times, we put a plus sign `+` after a character. For example, indicate that the letter `e` can occur one or more times in the text.

### Repetitions: The Question Mark
Question Mark `?`

To indicate that a character is optional, we put a `?` question mark after a character. For example, indicate that the following letter `u` is optional.

### Repetitions: Curly Braces

To express a certain number of occurrences of a character, we write curly braces `{n}` along with how many times we want it to occur at the end. For example, indicate that the following letter `e` can occur only 2 times.

To express at least a certain number of occurrences of a character, we write the end of the character at least how many times we want it to occur, with a comma `,` at the end, and inside curly braces `{n, }`. For example, indicate that the following letter `e` can occur at least 3 times.

To express the occurrence of a character in a certain number range, we write curly braces `{x,y}` with the interval we want to go to the end. For example, indicate that the following letter `e` can only occur between 1 and 3.

## Grouping

### Parentheses ( ): Grouping
We can group an expression and use these groups to reference or enforce some rules. To group an expression, we enclose `()` in parentheses. For now just group `haa` below.

### Group Reference
Referencing a Group

The words `ha` and `haa` are grouped below. The first group is used by writing `\1` to avoid rewriting. Here 1 denotes the order of grouping. Type `\2` at the end of the expression to refer to the second group.

### Non-capturing Groupping
Parentheses `(?: )`: Non-capturing Grouping

You can group an expression and ensure that it is not captured by references. For example, below are two groups. However, the first group reference we denote with `\1` actually indicates the second group, as the first is a non-capturing group.

### Pipe Character |
It allows to specify that an expression can be in different expressions. Thus, all possible statements are written separated by the pipe sign `|`. This differs from charset `[abc]`, charsets operate at the character level. Alternatives are at the expression level. For example, the following expression would select both cat and Cat. Add another pipe sign `|` to the end of the expression and type rat so that all words are selected.

### Escape Character \
There are special characters that we use when writing regex. `{ } [ ] / \ + * . $^ | ?` Before we can select these characters themselves, we need to use an escape character `\`. For example, to select the dot . and asterisk `*` characters in the text, let's add an escape character `\` before it.

### Start of The String
Caret Sign `^`:

Selecting by Line Start
We were using `[0-9]` to find numbers. To find only numbers at the beginning of a line, prefix this expression with the `^` sign.

### End of The String
Dollar Sign `$`:

Selecting by End of Line
Let's use the `$` sign after the html value to find the html texts only at the end of the line.

### Alphanumeric
Word Character `\w`: Letter, Number and Underscore

The expression `\w` is used to find letters, numbers and underscore characters. Let's use the expression `\w` to find word characters in the text.

### Non-alphanumeric
Except Word Character `\W`

The expression `\W` is used to find characters other than letters, numbers, and underscores.

### Digits
Number Character `\d`

`\d` is used to find only number characters.

### Non-digits
Except Number Character `\D`

`\D` is used to find non-numeric characters.

### Whitespace Characters
Space Character `\s`

`\s` is used to find only space characters.

### Non-whitespace Characters
Except Space Character `\S`

`\S` is used to find non-space characters.

## Lookarounds
If we want the phrase we're writing to come before or after another phrase, we need to "lookaround". Take the next step to learn how to "lookaround".

### Lookarounds: Positive Lookahead
Positive Lookahead: `(?=)`

For example, we want to select the hour value in the text. Therefore, to select only the numerical values that have PM after them, we need to write the positive look-ahead expression `(?=)` after our expression. Include PM after the `=` sign inside the parentheses.

### Lookarounds: Negative Lookahead
Negative Lookahead: `(?!)`

For example, we want to select numbers other than the hour value in the text. Therefore, we need to write the negative look-ahead `(?!)` expression after our expression to select only the numerical values that do not have PM after them. Include PM after the `!` sign inside the parentheses.

### Lookarounds: Positive Lookbehind
Positive Lookbehind: `(?<=)`

For example, we want to select the price value in the text. Therefore, to select only the number values that preceded by `$`, we need to write the positive lookbehind expression `(?<=)` before our expression. Add `\$` after the `=` sign inside the brackets.

### Lookarounds: Negative Lookbehind
Negative Lookbehind: `(?<!)`

For example, we want to select numbers in the text other than the price value. Therefore, to select only numeric values that are not preceded by `$`, we need to write the negative lookbehind `(?<!)` before our expression. Add `\$` after the `!` inside the brackets.

## Flags
Flags change the output of the expression. That's why flags are also called modifiers. Determines whether the typed expression treats text as separate lines, is case sensitive, or finds all matches. Continue to the next step to learn the flags.

### Flags: Global
The global flag causes the expression to select all matches. If not used it will only select the first match. Now enable the global flag to be able to select all matches.

`/g all matches`

### Flags: Multiline
Regex sees all text as one line. But we use the multiline flag to handle each line separately. In this way, the expressions we write according to the end of the linework separately for each line. Now enable the multiline flag to find all matches.

`/m multiline`

### Flags: Case Insensitive
In order to remove the case-sensitiveness of the expression we have written, we must activate the case-insensitive flag.

`/i case insensitve`

### Greedy Matching
Regex does a greedy match by default. This means that the matchmaking will be as long as possible. Check out the example below. It refers to any match that ends in `r` and can be any character preceded by it. But it does not stop at the first letter `r`.

### Lazy Matching
Lazy matchmaking, unlike greedy matching, stops at the first matching. For example, in the example below, add a `?` after `*` to find the first match that ends with the letter `r` and is preceded by any character. It means that this match will stop at the first letter `r`.

## Reference
- [Learn Regex](https://regexlearn.com/learn/regex101)
- [Cheatsheet](https://regexlearn.com/cheatsheet)
- [Regex Crossword](https://regexcrossword.com/)
- [Regex library](https://uibakery.io/regex-library)

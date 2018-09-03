This file contains the control statements concepts

Decision making
if:
    1. if(boolean_expression){}
    2. if(boolean_expression){}     else {}
    3. if(boolean_expression){}     else if(boolean_expression){}       else{}
  Note:
  1. the expression need not be surrounded by parenthesis() but braces for statement inside braces{} are needed.
  2. if statement can start with a short statement(:=) to execute before the condition.
     Variables declared by the statement are only in scope until the end of the if.
  3. Variables declared inside an if short statement are also available inside any of the else blocks.
switch:
    Switch cases need not be constants, and the values need not be integers.
    Only runs the selected cases and not all the cases that follow.
    Switch without a condition is the same as switch true. This construct can be a clean way to write long if-then-else chains.
  https://www.tutorialspoint.com/go/go_switch_statement.htm
select:
    A select statement is similar to switch statement with difference that case statements refers to channel communications.
Loops:
for: is the only loop looping construct in golang.
    The basic for loop has three components separated by semicolons:
        the init statement: executed before the first iteration
        the condition expression: evaluated before every iteration
        the post statement: executed at the end of every iteration
    The init statement will often be a short variable declaration, and the variables declared there are visible only in the scope of the for statement
    The init and post statements are optional.
    If you omit the loop condition it loops forever, so an infinite loop is compactly expressed.
break:
    terminate the loop
    terminate a case in switch

continue:
	It causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating

goto:
	It transfers control to the labeled statement.


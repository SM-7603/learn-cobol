              >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 02-variables-and-math.
       AUTHOR. Shubham Mohanty.
       DATE-WRITTEN. Feb 10th, 2024
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
      *> THIS IS THE WORKING STORAGE
      *> IT'S JOB IS TO HOLD VARIABLES:
       WORKING-STORAGE SECTION.
      *> ALPHA NUMERIC VARIABLES (X)
       01 SampleData PIC X(10)
           VALUE "Stuff".
      *> ONLY LETTERS OR SPACES
       01 JustLetters PIC AAA
           VALUE "ABC".
      *> FOR NUMBERS:
       01 JustNums PIC 9(4) 
           VALUE 1234.
      *> SIGNED NUMBERS
       01 SignedInt PIC S9(4)
           VALUE -1234.
      *> FLOATING POINT NUMBERS
       01 PayCheck PIC 9(4)V99
           VALUE ZEROS.

      *> GROUP ITEMS (COLLECTION OF VALUES)
       01 CUSTOMER.
           05 IdentityNum PIC 9(3).
           05 CustName PIC X(20).
           05 DateOfBirth.
               10 MOB PIC 99.
               10 DOB PIC 99.
               10 YOB PIC 9(4).

      *> values to test operations
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.
       01 ANS PIC S99V99 VALUE 0.
       01 REM PIC 9V99.

      *> these values make more sense 
      *> for finding remainders: (ask yourself why?)
      *> *HINT: those pesky decimals!
      *> 01 Num1 PIC 9 VALUE 5.
      *> 01 Num2 PIC 9 VALUE 4.
      *> 01 Num3 PIC 9 VALUE 3.
      *> 01 ANS PIC S99 VALUE 0.
      *> 01 REM PIC 99.
           
      *> THIS IS WHERE THE ACTUAL CODE GOES:
       PROCEDURE DIVISION.
      *> MOVE IS TO ASSIGN VALUES
       MOVE "MORE STUFF" TO SampleData
       MOVE "123" TO SampleData
       MOVE 123 TO SampleData
       DISPLAY SampleData
       DISPLAY PayCheck
      *> NOW LET'S CREATE A CUSTOMER
      *> This is how you would do it in a 
      *> single line, there are easier ways
      *> of doing this using ACCEPT, etc. 
      *> (we'll go over that later)
      *> but right now let's do it in a single line way
      *> be mindful of the spaces 
      *> look at the variables that we're assigning
      *> the values to (be mindful of the capacity)    
       MOVE "123SHUBHAM MOHANTY     07062003"
         TO CUSTOMER
       DISPLAY CustName
       DISPLAY MOB "/" DOB "/" YOB

      *> Let's play a bit more with figurative constants:
       MOVE ZEROS TO SampleData
       DISPLAY SampleData
       MOVE SPACES TO SampleData
       DISPLAY SampleData
      *> this replaces all the spaces/chars by '?'
       MOVE HIGH-VALUE TO SampleData
       DISPLAY SampleData
      *> this replaces all the chars by spaces " "
       MOVE LOW-VALUE TO SampleData
       DISPLAY SampleData
       MOVE QUOTE TO SampleData
       DISPLAY SampleData
       MOVE ALL "9" TO SampleData
       DISPLAY SampleData

      *> Let's do MATHS :D
       ADD Num1 TO Num2 GIVING ANS
       DISPLAY ANS
       SUBTRACT Num1 FROM Num2 GIVING ANS 
       DISPLAY ANS
       MULTIPLY Num1 BY Num2 GIVING ANS
       DISPLAY ANS
       DIVIDE Num1 BY Num2 GIVING ANS 
       DISPLAY ANS
       DIVIDE Num2 BY Num1 GIVING ANS REMAINDER REM
       DISPLAY "Remainder: " REM 

      *> More examples:
       

       STOP RUN.
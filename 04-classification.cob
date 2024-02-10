       >>SOURCE FORMAT FREE
      *> Identification Division:
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 04-classification.
       AUTHOR. Shubham Mohanty.
       DATE-WRITTEN. Feb 10th 2024.
      *> ENVIRONMENT DIVISION is used to define
      *> a custom data classification
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingScore IS "A" THRU "C", "D".
       DATA DIVISION.
      *> we'll get back to the file section later
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 AGE PIC 99 VALUE 0.
       01 GRADE PIC 99 VALUE 0.
       01 SCORE PIC X(1) VALUE "B".
      *> for a boolean condition:
       01 CanVoteFlag PIC 9 VALUE 0.
      *> 88 is special, its how we can set a conditon
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01 TestNumber PIC X.
           88 IsPrime 
               VALUE "1", "3", "5", "7".
           88 IsOdd 
               VALUE "1", "3", "5", "7", "9".
           88 IsEven
               VALUE "2", "4", "6", "8".
           88 LessThan5
               VALUE "1" THRU "4".
           88 ANumber  
               VALUE "0" THRU "9".

       PROCEDURE DIVISION.
      *> let's perform actions based on conditions:
       DISPLAY "Enter Age: " WITH NO ADVANCING
       ACCEPT AGE
       IF AGE >= 18 THEN 
           DISPLAY "YOU CAN VOTE"
       ELSE 
           DISPLAY "YOU CAN'T VOTE"
       END-IF

      *> Note: while if else exist
      *> its advisable to avoid them if you can,
      *> as it creates messy code 
      *> *(COBOL doesn't like messy code TT_TT)
      *> just use regular IF conditions and END-IF'S

      *> conditional operators:
      *> Notice, how we can use symbols =, >, <, etc.
      *> for the operators, or just use plain english

      *> this is much cleaner:
       IF AGE LESS THAN 5 THEN 
           DISPLAY "STAY HOME"
       END-IF 
       IF AGE = 5 THEN 
           DISPLAY "GO TO KINDERGARTEN"
       END-IF 
       IF AGE > 5 AND AGE < 18 THEN 
           COMPUTE GRADE = AGE - 5
           DISPLAY "GO TO GRADE: " GRADE
       END-IF 
       IF AGE GREATER THAN OR EQUAL TO 18
      *> SEE!!!
      *> even the nested if conditions are much cleaner
           IF AGE < 30 THEN
               DISPLAY "GO TO COLLEGE"
           END-IF 
           IF AGE > 30 THEN 
               DISPLAY "FIND A JOB"
           END-IF
       END-IF

      *> time to test out out classification division
       DISPLAY "ENTER YOUR SCORE: 'A', 'B', 'C', 'D', 'E', 'F': " 
               WITH NO ADVANCING
       ACCEPT SCORE   

      *> so it's something like a range?
       IF SCORE IS PassingScore THEN 
           DISPLAY "YOU PASSED"
       ELSE 
           DISPLAY "YOU FAILED"
       END-IF

      *> there are also built-in classification
      *> numeric, alphanumeric, alphabetic-upper, etc.

      *> let's test out these classifications:
       IF SCORE IS NOT NUMERIC THEN 
           DISPLAY "NOT A NUMBER!"
       ELSE 
           DISPLAY "A NUMBER!"
       END-IF

      *> let's see how to set toggle values: (the flag)
       IF AGE > 18 THEN 
           SET CanVote TO TRUE 
       ELSE 
           SET CanVote TO TRUE 
       END-IF 
       DISPLAY "VOTE: " CanVoteFlag

      *> Now, lets see how evalutate works:
       DISPLAY "ENTER SINGLE NUMBER OR X TO EXIT: "
       ACCEPT TestNumber
      *> example of looping 
      *> (don't worry, they are easy!)
       PERFORM UNTIL NOT ANumber
           EVALUATE TRUE
               WHEN IsPrime DISPLAY "PRIME"    
               WHEN IsOdd DISPLAY "ODD"
               WHEN IsEven DISPLAY "EVEN"
               WHEN LessThan5 DISPLAY "LESS THAN 5"
      *> the default:
               WHEN OTHER DISPLAY "DEFAULT ACTION"
      *> end evalutation
           END-EVALUATE 
      *> ask for number for testing, at the end of loop
           ACCEPT TestNumber
      *> end loop
       END-PERFORM


       STOP RUN.
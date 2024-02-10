       >>SOURCE FORMAT FREE
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       AUTHOR. Shubham Mohanty.
       DATE-WRITTEN. Feb somethhing.
       ENVIRONMENT DIVISION.
       
       DATA DIVISION. 
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 UserName PIC X(30) 
             VALUE "ME".
           01 NUM1 PIC 9 
             VALUE ZEROS.
           01 NUM2 PIC 9 
             VALUE ZEROS.
           01 TOTAL PIC 99
             VALUE 0.
           01 SSNUM.
               05 SSAREA PIC 999.
               05 SSGROUP PIC 99.
               05 SSSERIAL PIC 9999.

           01 PIVALUE CONSTANT AS 3.14.

       PROCEDURE DIVISION.
       DISPLAY "WHAT IS YOUR NAME "
             WITH NO ADVANCING
       ACCEPT UserName
       DISPLAY "HELLO " UserName

       MOVE ZERO TO UserName
       DISPLAY UserName
       DISPLAY "Enter 2 values to sum "
       ACCEPT NUM1
       ACCEPT NUM2
       COMPUTE TOTAL = NUM1 + NUM2
       DISPLAY NUM1 " + " NUM2 " = " TOTAL
       DISPLAY "Enter your social security number "
       ACCEPT SSNUM
       DISPLAY "Area " SSAREA
      *> DISPLAY "Group " SSGROUP
      *> DISPLAY "Serial " SSSERIAL



       STOP RUN.

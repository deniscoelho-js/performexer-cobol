      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMTHRUATOD.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CONTADOR     PIC 9   VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM VARYING CONTADOR FROM  1 BY 1 UNTIL CONTADOR > 5
               DISPLAY "OLA"
            END-PERFORM.
            STOP RUN.

       END PROGRAM PERFORMTHRUATOD.

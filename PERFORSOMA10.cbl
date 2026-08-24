      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORSOMA10.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUMERO       PIC 9(4).
       01 SOMA         PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 3 TIMES
               ACCEPT NUMERO
               ADD NUMERO TO SOMA
           END-PERFORM.
           DISPLAY "A SOMA DOS 10 NUMEROS E: " SOMA.
            STOP RUN.

       END PROGRAM PERFORSOMA10.

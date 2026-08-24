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
       01 SEQ-LETRAS   PIC X(4) VALUE "ABCD".
       01 INDICE       PIC 9    VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
          PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 4
           DISPLAY "Letra: " SEQ-LETRAS(INDICE:1)
           END-PERFORM.
            STOP RUN.

       END PROGRAM PERFORMTHRUATOD.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMMULT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM1            PIC 9(2) VALUE 3.
       01  NUM2            PIC 9(2) VALUE 10.
       01  RESULTADO       PIC 9(3)V99(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM MULTIPLICACAO.
            PERFORM MOSTRAR-RESULTADO.
            STOP RUN.

       MULTIPLICACAO.
           COMPUTE RESULTADO = NUM1 * NUM2.

       MOSTRAR-RESULTADO.
           DISPLAY "O resultado da multiplicacao e: " RESULTADO.

       END PROGRAM PERFORMMULT.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMCALCSOM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1         PIC 9(02) VALUE 10.
       01 NUM2         PIC 9(02) VALUE 20.
       01 RESULTADO    PIC Z(03).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM CALCULAR-SOMA.
            PERFORM MOSTRAR-RESULTADO.
            STOP RUN.

       CALCULAR-SOMA.
           ADD NUM1 TO NUM2 GIVING RESULTADO.

       MOSTRAR-RESULTADO.
            DISPLAY "O resultado eh..:" RESULTADO.
       END PROGRAM PERFORMCALCSOM.

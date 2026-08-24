      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMMEDIA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1             PIC 9(2) VALUE 4.
       01 NUM2             PIC 9(2) VALUE 5.
       01 SOMA             PIC 9(3).
       01 MEDIA            PIC 9(3)V9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM CALCULAR-MEDIA.
            PERFORM EXIBIR-MEDIA.
            STOP RUN.

       CALCULAR-MEDIA.
           COMPUTE SOMA = NUM1 + NUM2.
           COMPUTE MEDIA = SOMA / 2.

       EXIBIR-MEDIA.
           DISPLAY "A media e: " MEDIA.

       END PROGRAM PERFORMMEDIA.

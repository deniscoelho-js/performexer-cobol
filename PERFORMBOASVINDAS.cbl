      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMBOASVINDAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MENSAGEM-BV          PIC X(20) VALUE "Boas vindas!".


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM EXIBIR-MENSAGEM.
            STOP RUN.

           EXIBIR-MENSAGEM.
               DISPLAY MENSAGEM-BV.

       END PROGRAM PERFORMBOASVINDAS.

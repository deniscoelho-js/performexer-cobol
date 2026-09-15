      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGINITIALIZE.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-NOME.
           03 WS-PRIMEIRO-NOME        PIC X(10) VALUE 'SEC'.
           03 FILLER                  PIC X(10) VALUE 'SILVA'.
       PROCEDURE DIVISION.
           DISPLAY 'SAIDA 1: '
           DISPLAY WS-NOME
           .

           DISPLAY 'SAIDA 2: '
           INITIALIZE WS-NOME
           DISPLAY WS-NOME
           .
            STOP RUN.

       END PROGRAM PROGINITIALIZE.

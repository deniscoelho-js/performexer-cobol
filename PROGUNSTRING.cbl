      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGUNSTRING.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NOME-COMPLETO                PIC X(30) VALUE SPACES.
       01 WS-NOME.
           03 WS-PRIM-NOME            PIC X(10) VALUE SPACES.
           03 WS-NOME-MEIO                PIC X(30) VALUE SPACES.
           03 WS-ULTI-NOME                PIC X(30) VALUE SPACES.
       77 WS-MOSTRA                       PIC X(50) VALUE SPACES.
       PROCEDURE DIVISION.
           INITIALIZE WS-NOME-COMPLETO
                      WS-NOME
                      WS-MOSTRA
           MOVE 'MARIO SILVA SEC'        TO WS-NOME-COMPLETO

           UNSTRING
               WS-NOME-COMPLETO
               DELIMITED BY " "
               INTO WS-PRIM-NOME
                    WS-NOME-MEIO
                    WS-ULTI-NOME
           END-UNSTRING.

           DISPLAY 'WS-PRIM-NOME: ' WS-PRIM-NOME 
           DISPLAY 'WS-NOME-MEIO: ' WS-NOME-MEIO
           DISPLAY 'WS-ULTI-NOME: ' WS-ULTI-NOME 

            STOP RUN.

       END PROGRAM PROGUNSTRING.

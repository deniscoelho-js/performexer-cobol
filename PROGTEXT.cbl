      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGTEXT.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-CONTEUDO            PIC X(30) VALUE SPACES.
       01 WS-TEXTO               PIC X(40) VALUE SPACES.
       PROCEDURE DIVISION.
           INITIALIZE WS-CONTEUDO
                  WS-TEXTO
           STRING 
               'SEC'
               ' '
               'SILVA'
               DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO

           DISPLAY '================================'
           
           INITIALIZE WS-CONTEUDO
                      WS-TEXTO 

           MOVE 'O ANDRE ESTA MINISTRANDO CURSO' TO WS-TEXTO
           
           STRING 
               WS-TEXTO(1:8)
               WS-TEXTO(10:22)
               DELIMITED BY SIZE INTO WS-CONTEUDO
           END-STRING

           DISPLAY WS-CONTEUDO

            STOP RUN.

       END PROGRAM PROGTEXT.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGMEDIALUNO.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 WS-DADOS-ALUNO.
           05 WS-NOME-ALUNO            PIC X(30).
           05 WS-MATERIA               PIC X(30).
           05 WS-NOTA-1                PIC 99V99.
           05 WS-NOTA-2                PIC 99V99.
           05 WS-NOTA-3                PIC 99V99.
           05 WS-NOTA-4                PIC 99V99.
           05 WS-MEDIA                 PIC 99V99.

       01 WS-VALIDO                    PIC X VALUE 'N'.
       01 WS-INDICE                    PIC 99.
       01 WS-CARACTERE                 PIC X.
       01 WS-ERRO                      PIC X VALUE 'N'.

       PROCEDURE DIVISION.
           MAIN-PROCEDURE.
               PERFORM UNTIL WS-VALIDO = 'S'
                   DISPLAY 'DIGITE O NOME DO ALUNO: '
                   ACCEPT WS-NOME-ALUNO

                   MOVE 'N' TO WS-ERRO
                   PERFORM VARYING WS-INDICE FROM 1 BY 1 UNTIL WS-INDICE
      *               ...      

           DISPLAY 'DIGITE A NOTA: ' 
           ACCEPT WS-NOTA-1

           DISPLAY 'DIGITE A NOTA: ' 
           ACCEPT WS-NOTA-2

           DISPLAY 'DIGITE A NOTA: ' 
           ACCEPT WS-NOTA-3

           DISPLAY 'DIGITE A NOTA: ' 
           ACCEPT WS-NOTA-4
           
           COMPUTE WS-MEDIA = (WS-NOTA-1 + WS-NOTA-2 + WS-NOTA-3 + 
                                                WS-NOTA-4) / 4

           DISPLAY 'A MEDIA DO ALUNO FOI: ' WS-MEDIA

           .
            STOP RUN.
       END PROGRAM PROGMEDIALUNO.

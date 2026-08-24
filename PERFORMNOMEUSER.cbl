      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMNOMEUSER.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NOME-USUARIO        PIC X(20) VALUE "DENIS".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM EXIBIR-NOME.
            STOP RUN.

       EXIBIR-NOME.
            DISPLAY "O nome do usuario eh..:" NOME-USUARIO.
       END PROGRAM PERFORMNOMEUSER.

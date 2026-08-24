      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMTHRUINIFIM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-MENSAGEM  PIC X(30).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
          PERFORM INICIO THRU FIM.
            STOP RUN.

       INICIO.
           DISPLAY "INICIO".
           MOVE "EXECUTANDO INICIO" TO WS-MENSAGEM.
           DISPLAY WS-MENSAGEM.

       MEIO.
           DISPLAY "MEIO".
           MOVE "EXECUTANDO MEIO" TO WS-MENSAGEM.
           DISPLAY WS-MENSAGEM.

       FIM.
           DISPLAY "FIM".
           MOVE "EXECUTANDO FIM" TO WS-MENSAGEM.
           DISPLAY WS-MENSAGEM.

       END PROGRAM PERFORMTHRUINIFIM.

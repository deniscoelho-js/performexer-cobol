      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AREA.
           03 WS-RESULT                PIC 99.
           03 WS-NUM-1                 PIC 99.
           03 WS-NUM-2                 PIC 99.
       PROCEDURE DIVISION.
           MAIN-PROCEDURE.
                DISPLAY 'PROGRAMA CHAMADOR'.

           INITIALIZE WS-AREA.
           SET WS-NUM-1                TO 5.
           SET WS-NUM-2                TO 3.
           
           CALL 'PROGCHAMADO' USING WS-AREA

           DISPLAY 'RESULTADO DO CALCULO: ' WS-RESULT
            STOP RUN.

       END PROGRAM PROGCHAMADOR.

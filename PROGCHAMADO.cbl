      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCHAMADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           02 WS-RETURN      PIC 99 VALUE 0.
           02 WS-NUM-1       PIC 99 VALUE 0.
           02 WS-NUM-2       PIC 99 VALUE 0.
      
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY 'PROGRAMA CHAMADO'

           COMPUTE WS-RETURN = WS-NUM-1 + WS-NUM-2.

           EXIT PROGRAM.

       END PROGRAM PROGCHAMADO.

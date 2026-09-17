      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGESTREPET.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEIS.
           03 WS-COUNT                    PIC 99.
           03 WS-TOTAL                    PIC 99.
           03 WS-INDICE                   PIC 99.
       PROCEDURE DIVISION.
       P100-INICIO.
           INITIALIZE    WS-VARIAVEIS.
      *     PERFORM P300-PROCESSA-1        THRU     P300-FIM 3 TIMES
      *     PERFORM P500-PROCESSA-2        THRU     P500-FIM WITH TEST
      *                                      BEFORE UNTIL WS-COUNT = 5
           PERFORM P700-PROCESSA-3        THRU     P700-FIM 
           PERFORM P900-FINALIZA
       .
       P300-PROCESSA-1.
           ADD 1                          TO       WS-COUNT
           DISPLAY 'WS-COUNT: ' WS-COUNT

           PERFORM 3 TIMES
               ADD 1                      TO       WS-TOTAL
               DISPLAY 'WS-TOTAL: '                WS-TOTAL
           END-PERFORM
           .
       P300-FIM.
       P500-PROCESSA-2.
           ADD 1                          TO       WS-COUNT
           DISPLAY 'WS-COUNT: ' WS-COUNT
           
           MOVE ZEROS                     TO WS-TOTAL
           PERFORM WITH TEST BEFORE UNTIL WS-TOTAL = 3
               ADD 1                      TO       WS-TOTAL
               DISPLAY 'WS-TOTAL: '                WS-TOTAL
           END-PERFORM
           . 
       P500-FIM.

       P700-PROCESSA-3.
           
           PERFORM VARYING WS-INDICE FROM 1 BY 1 UNTIL WS-INDICE > 5
           DISPLAY 'WS-INDE: ' WS-INDICE
           END-PERFORM
           .
       P700-FIM.

       P900-FINALIZA.

            STOP RUN.

       END PROGRAM PROGESTREPET.

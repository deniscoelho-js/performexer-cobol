      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGBUBBLESORT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WS-QTD                   PIC 9(2) VALUE 5.
       01  WS-I                     PIC 9(2).
       01  WS-J                     PIC 9(2).
       01  WS-TEMP                  PIC A(30).

       01  WS-NOMES.
           05 WS-NOME OCCURS 5 TIMES PIC A(30).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "DIGITE 5 NOMES: "
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-QTD
               DISPLAY "NOME " WS-I ": "
               ACCEPT WS-NOME(WS-I)
           END-PERFORM.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-QTD
            PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > WS-QTD - WS-I
                   IF WS-NOME(WS-J) > WS-NOME(WS-J + 1)
                       MOVE WS-NOME(WS-J) TO WS-TEMP
                       MOVE WS-NOME(WS-J + 1) TO WS-NOME(WS-J)
                       MOVE WS-TEMP TO WS-NOME(WS-J + 1)
                   END-IF
            END-PERFORM
           END-PERFORM.
           
           DISPLAY "=== NOMES EM ORDEM ALFABETICA ===".
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-QTD
               DISPLAY WS-NOME(WS-I)
            END-PERFORM.

            STOP RUN.

       END PROGRAM PROGBUBBLESORT.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORMDATAATUAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DATA-COMPLETA    PIC 9(8).
       01 ANO              PIC 9(4).
       01 MES              PIC 9(2).
       01 DIA              PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM OBTER-DATA.
            PERFORM EXIBIR-DATA.
            STOP RUN.

            OBTER-DATA.
                ACCEPT DATA-COMPLETA FROM DATE YYYYMMDD.
                MOVE DATA-COMPLETA(1:4) TO ANO.
                MOVE DATA-COMPLETA(5:2) TO MES.
                MOVE DATA-COMPLETA(7:2) TO DIA.

            EXIBIR-DATA.
                DISPLAY "Data atual: "DIA "/" MES "/" ANO.

       END PROGRAM PERFORMDATAATUAL.

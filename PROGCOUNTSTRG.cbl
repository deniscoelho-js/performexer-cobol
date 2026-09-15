      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOUNTSTRG.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DATA                PIC X(10) VALUE SPACES.
       01 FILLER     REDEFINES  WS-DATA.
           03 WS-DATA-DD        PIC 9(02).
           03 FILLER            PIC X.
           03 WS-DATA-MM        PIC 9(02).
           03 FILLER            PIC X.
           03 WS-DATA-AA        PIC 9(04).
       77 WS-NOMES-MES-AUX      PIC X(15) VALUE SPACES.
       77 WS-TECLA-AUX          PIC X.
       77 WS-TOTAL              PIC 9(02).
       77 WS-AUX                PIC 9(02).
       77 FILLER                PIC X(10) VALUE "12/02/2021".

       01 WS-MESES-ANO          PIC 99 VALUE ZEROS.
           88 WS-MES-ATUAL      VALUE 1 THRU 12.

       01 WS-DIAS-MES           PIC 99 VALUE ZEROS.
           88 WS-FEV-NB         VALUE 1 THRU 28.
           88 WS-FEV-B          VALUE 1 THRU 29.
           88 WS-MES-30         VALUE 1 THRU 30.
           88 WS-MES-31         VALUE 1 THRU 31.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       P100-INICIAL.
           DISPLAY "INICIO DO PROCESSO".

           MOVE "12"            TO WS-DATA(01:02).
           MOVE "/"             TO WS-DATA(03:01).
           MOVE "03"            TO WS-DATA(04:02).
           MOVE "/"             TO WS-DATA(06:01).
           MOVE "2021"          TO WS-DATA(07:04).

           DISPLAY WS-DATA.

           INSPECT WS-DATA TALLYING WS-TOTAL FOR ALL "/"
           BEFORE INITIAL "2021".

           DISPLAY "CONTAGEM TOTAL DO CARACTER: " WS-TOTAL.
           
           INSPECT WS-DATA REPLACING ALL "/" BY "-" AFTER "12".
           DISPLAY "MUDANCA DE SEPARADOR: " WS-DATA.
            STOP RUN.

       END PROGRAM PROGCOUNTSTRG.

      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGJUROSCOB.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS  COMMA.
           CURRENCY SIGN   IS  "$".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-VALOR-PRINCIPAL       PIC $9(5),99.
       77 WS-TAXA-JUROS            PIC 99,999.
       77 WS-PERIODO               PIC 999.
       77 WS-JUROS-SIMPLES         PIC $9(5),99.
       77 WS-MONTANTE-SIMPLES      PIC $9(5),99.
       77 WS-MONTANTE-COMPOSTO     PIC $9(5),99.

       77 WS-VP-NUM                PIC 9(5)V99.
       77 WS-TJ-NUM                PIC 9(3)V999.
       77 WS-PERIODO-NUM           PIC 999.
       77 WS-JS-NUM                PIC 9(5)V99.
       77 WS-MS-NUM                PIC 9(5)V99.
       77 WS-JC-NUM                PIC 9(5)V99.
       77 WS-MC-NUM                PIC 9(5)V99.

       77 WS-RESPOSTA              PIC X(1).

      *    https://www.youtube.com/watch?v=SxSNgXZsLgE  20:31

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "===============================================".
           DISPLAY "      CALULO DE JUROS SIMPLES E COMPOSTO      .".
           DISPLAY "   ".
           DISPLAY "INFORME O VALOR PRINCIPAL (R$): " WITH NO ADVANCING.
           ACCEPT WS-VALOR-PRINCIPAL.
           MOVE WS-VALOR-PRINCIPAL TO WS-VP-NUM.

           DISPLAY "INFORME A TAXA DE JUROS (% AO MES): "
                                                      WITH NO ADVANCING.
           ACCEPT WS-TAXA-JUROS.
           MOVE WS-TAXA-JUROS TO WS-TJ-NUM.

            STOP RUN.

       END PROGRAM PROGJUROSCOB.

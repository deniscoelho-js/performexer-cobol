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
       77 WS-JUROS-COMPOSTOS       PIC $9(5),99.
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

           DISPLAY "INFORM O PERIODO EM (MESES): " WITH NO ADVANCING.

           ACCEPT WS-PERIODO.
           MOVE WS-PERIODO TO WS-PERIODO-NUM.

      *CALULO DE JUROS SIMPLES
       COMPUTE WS-JS-NUM = WS-VP-NUM * (WS-TJ-NUM / 100) *
                                           WS-PERIODO-NUM.
       COMPUTE WS-MS-NUM = WS-VP-NUM + WS-JS-NUM.

       MOVE WS-JS-NUM TO WS-JUROS-SIMPLES.
       MOVE WS-MS-NUM TO WS-MONTANTE-SIMPLES.

      *CALULO DE JUROS COMPOSTOS
       COMPUTE WS-MC-NUM = WS-VP-NUM * (1 + (WS-TJ-NUM / 100))
                                                  ** WS-PERIODO-NUM.
       COMPUTE WS-JC-NUM = WS-MC-NUM - WS-VP-NUM.

       MOVE WS-JC-NUM TO WS-JUROS-COMPOSTOS.
       MOVE WS-MC-NUM TO WS-MONTANTE-COMPOSTO.

      *EXIBIR OS RESULTADOS
       DISPLAY " ".
       DISPLAY "                   RESULTADOS                         ".
       DISPLAY "======================================================".
       DISPLAY "                  JUROS SIMPLES                       ".
       DISPLAY "======================================================".
       DISPLAY "JUROS: R " FUNCTION TRIM(WS-JUROS-SIMPLES).
       DISPLAY "MONTANTE: R " FUNCTION TRIM(WS-MONTANTE-SIMPLES).
       DISPLAY " ".
       DISPLAY "                   RESULTADOS                         ".
       DISPLAY "======================================================".
       DISPLAY "                  JUROS COMPOSTOS                     ".
       DISPLAY "======================================================".
       DISPLAY "JUROS: R " FUNCTION TRIM(WS-JUROS-COMPOSTOS).
       DISPLAY "MONTANTE: R " FUNCTION TRIM(WS-MONTANTE-COMPOSTO).
       DISPLAY " ".
       DISPLAY "DESEJA REALIZAR NOVO CALCULO? " WITH NO ADVANCING.
       ACCEPT WS-RESPOSTA.

       IF WS-RESPOSTA = "S" OR "s"
           GO TO MAIN-PROCEDURE
       ELSE
           DISPLAY " ".
           DISPLAY "OBRIGADO POR USAR O SISTEMA".

            STOP RUN.

       END PROGRAM PROGJUROSCOB.

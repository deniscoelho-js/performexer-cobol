      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAIXAELETPRG.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-OPCAO     PIC X(2).
       77 WS-SALDO     PIC 9(10)V99 VALUE ZERO.
       77 WS-DEPOSITO  PIC 9(10)V99 VALUE ZERO.
       77 WS-SAQUE     PIC 9(10)V99 VALUE ZERO.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           P001-MENU.
               DISPLAY "--------------------------".
               DISPLAY "       BANCO B NEW        ".
               DISPLAY "--------------------------".
               DISPLAY "1 - DEPOSITO".
               DISPLAY "2 - SAQUE".
               DISPLAY "3 - CONSULTAR SALDO".
               DISPLAY "4 - SAIR".
               ACCEPT WS-OPCAO.

           EVALUATE WS-OPCAO
               WHEN '1'
                   DISPLAY "--------------------------"
                   DISPLAY "       BANCO B NEW        "
                   DISPLAY "--------------------------"
                   DISPLAY "DIGITE O VALOR DO DEPOSITO"
                   ACCEPT WS-DEPOSITO
                   COMPUTE WS-SALDO = WS-SALDO + WS-DEPOSITO
                   DISPLAY "DEPOSITO EFETIVADO"
                   PERFORM P001-MENU
               WHEN '2'
                   DISPLAY "--------------------------"
                   DISPLAY "       BANCO B NEW        "
                   DISPLAY "--------------------------"
                   DISPLAY "DIGITE O VALOR DO SAQUE"
                   ACCEPT WS-SAQUE
                   IF WS-SAQUE > WS-SALDO
                   THEN
                       DISPLAY "SALDO INSUFICIENTE"
                   ELSE
                       COMPUTE WS-SALDO = WS-SALDO - WS-SAQUE
                       DISPLAY "SAQUE EFETIVADO"
                   END-IF
                   PERFORM P001-MENU
                WHEN '3'
                   DISPLAY "--------------------------"
                   DISPLAY "       BANCO B NEW        "
                   DISPLAY "--------------------------"
                   DISPLAY "O SALDO DISPONIVEL EH DE: " WS-SALDO
                   DISPLAY WS-SALDO
                   PERFORM P001-MENU
                WHEN '4'
                   DISPLAY "ATE MAIS"
                   CONTINUE
                WHEN OTHER
                   PERFORM P001-MENU
           END-EVALUATE.
           STOP RUN.

       END PROGRAM CAIXAELETPRG.

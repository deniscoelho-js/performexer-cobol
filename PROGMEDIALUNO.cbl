      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGMEDIALUNO.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 WS-DADOS-ALUNO.
           05 WS-NOME-ALUNO            PIC X(30).
           05 WS-MATERIA               PIC X(30).
           05 WS-NOTAS                 PIC 99V99 OCCURS 4 TIMES.
           05 WS-MEDIA                 PIC 99V99.
       
       01 WS-CONTROLE.
           05 WS-VALIDO                    PIC X VALUE 'N'.
           05 WS-ERRO                      PIC X VALUE 'N'.
           05 WS-INDICE                    PIC 99.
           05 WS-CARACTERE                 PIC X.
           05 WS-SOMA-NOTAS                PIC 999V99 VALUE ZERO.

       01 WS-TEMP-NOTA                     PIC X(05).
       01 WS-NOTA-CONVERTIDA               PIC 99V99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 1000-VALIDAR-NOME
           PERFORM 2000-PROCESSAR-NOTAS
           PERFORM 3000-CALCULAR-MEDIA
           PERFORM 4000-EXIBIR-RESULTADO

            STOP RUN.
           
            1000-VALIDAR-NOME.
               PERFORM UNTIL WS-VALIDO = 'S'
                   DISPLAY 'DIGITE O NOME DO ALUNO: '
                   ACCEPT WS-NOME-ALUNO

                   MOVE 'N' TO WS-ERRO

                   IF WS-NOME-ALUNO = SPACES
                       MOVE 'S' TO WS-ERRO
                   ELSE
                       PERFORM VARYING WS-INDICE FROM 1 BY 1
                           UNTIL WS-INDICE > LENGTH OF WS-NOME-ALUNO

                           MOVE WS-NOME-ALUNO(WS-INDICE:1) TO 
                                                           WS-CARACTERE

                           IF NOT WS-CARACTERE ALPHABETIC
                               MOVE 'S' TO WS-ERRO
                            END-IF

                        END-PERFORM
                   END-IF

                 IF WS-ERRO = 'S'
                     DISPLAY 'ERRO: O NOME DEVE CONTER SOMENTES LETRAS'
                    MOVE 'N' TO WS-VALIDO
                    ELSE 
                        MOVE 'S' TO WS-VALIDO
                    END-IF
                END-PERFORM.

            2000-PROCESSAR-NOTAS.
               PERFORM VARYING WS-INDICE FROM 1 BY 1 UNTIL WS-INDICE > 4
                   MOVE 'N' TO WS-VALIDO
                   PERFORM UNTIL WS-VALIDO = 'S'
                       DISPLAY 'DIGITE A NOTA ' WS-INDICE ': '
                       MOVE SPACES TO WS-TEMP-NOTA
                       ACCEPT WS-TEMP-NOTA

                       IF WS-TEMP-NOTA = SPACES
                           DISPLAY 'ERRO: NOTA NAO PODE SER EM BRANCO'
                       ELSE
                    
                           COMPUTE WS-NOTA-CONVERTIDA = 
                                        FUNCTION NUMVAL(WS-TEMP-NOTA)
                           
                           IF WS-NOTA-CONVERTIDA = ZERO AND 
                              WS-TEMP-NOTA(1:1) NOT = '0'
                               DISPLAY 'ERRO: DIGITE APENAS NUMEROS'
                           ELSE
                           
                               IF WS-NOTA-CONVERTIDA > 10.00
                                   DISPLAY 'ERRO: NOTA MAXIMA EH 10.00'
                               ELSE
                                   MOVE WS-NOTA-CONVERTIDA TO 
                                                    WS-NOTAS(WS-INDICE)
                                   MOVE 'S' TO WS-VALIDO
                               END-IF
                           END-IF
                       END-IF
                    END-PERFORM
                END-PERFORM.

            3000-CALCULAR-MEDIA.
               PERFORM VARYING WS-INDICE FROM 1 BY 1 UNTIL WS-INDICE > 4 
                   ADD WS-NOTAS(WS-INDICE) TO WS-SOMA-NOTAS
                END-PERFORM.
                COMPUTE WS-MEDIA = WS-SOMA-NOTAS / 4.

            4000-EXIBIR-RESULTADO.
                DISPLAY '----------------------------------------'
                DISPLAY 'ALUNO: ' WS-NOME-ALUNO
                DISPLAY 'A MEDIA DO ALUNO FOI: ' WS-MEDIA
                DISPLAY '----------------------------------------'.

       END PROGRAM PROGMEDIALUNO.

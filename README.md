# Jokenpô em ABAP

Este programa em ABAP simula o jogo **Pedra, Papel e Tesoura** contra o computador.

## 📌 Funcionalidades
- O usuário escolhe entre **Pedra**, **Papel** ou **Tesoura** através de **radiobuttons**.
- O computador faz uma escolha aleatória.
- O programa compara as escolhas e informa o resultado:
  - Empate
  - Vitória do usuário
  - Vitória do computador

## 🛠️ Estrutura do Código
- `PARAMETERS`: define os radiobuttons para escolha do usuário.
- `DATA`: declara variáveis para armazenar a jogada do computador, a escolha do usuário e o resultado.
- `START-OF-SELECTION`: bloco principal que:
  1. Captura a escolha do usuário.
  2. Gera um número aleatório com base em `sy-uzeit` para a jogada do computador.
  3. Determina o resultado comparando as jogadas.
  4. Exibe o resultado na tela.

## ▶️ Como usar
1. Execute o programa `zjeandelavega` no ambiente SAP.
2. Selecione sua jogada (Pedra, Papel ou Tesoura).
3. Rode o programa.
4. Veja na tela:
   - Sua escolha
   - A escolha do computador
   - O resultado da partida

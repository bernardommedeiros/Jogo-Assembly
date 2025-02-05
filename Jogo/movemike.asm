.text
.globl forMovePlayer
forMovePlayer:
    # Salva os registradores na pilha
    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    sw $8, 0($sp)           # Salva $8
    addi $sp, $sp, -4
    sw $9, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    sw $10, 0($sp)          # Salva $10
    addi $sp, $sp, -4

    # Lê a tecla pressionada
    jal lerTecla            # Função que retorna a tecla em $v0

    # Verifica se a tecla "A" (esquerda) foi pressionada
    li $8, 97              # Código ASCII para "A"
    beq $2, $8, moverPlayerEsquerda

    # Verifica se a tecla "D" (direita) foi pressionada
    li $8, 100             # Código ASCII para "D"
    beq $2, $8, moverPlayerDireita

    j fimMovePlayer         # Se nenhuma tecla válida for pressionada, sai da função

moverPlayerEsquerda:
    addi $25, $25, -4       # Move o player 4 pixels para a esquerda
    j atualizarPlayerPos

moverPlayerDireita:
    addi $25, $25, 4        # Move o player 4 pixels para a direita
    j atualizarPlayerPos

atualizarPlayerPos:
    # Restaura o cenário na posição anterior do player
    add $4, $25, 30632      # Define a posição para restaurar
    jal forRestaurar2       # Função para restaurar o cenário

    # Redesenha o player na nova posição
    add $4, $0, $25         # Passa a nova posição para $4
    jal criarPlayer         # Redesenha o player

fimMovePlayer:
    # Restaura os registradores da pilha
    addi $sp, $sp, 4
    lw $10, 0($sp)
    addi $sp, $sp, 4
    lw $9, 0($sp)
    addi $sp, $sp, 4
    lw $8, 0($sp)
    addi $sp, $sp, 4
    lw $31, 0($sp)

    jr $31                  # Retorna ao chamador

# Função para ler a tecla pressionada (exemplo)
lerTecla:
    li $2, 12              # Syscall para ler um caractere
    syscall
    jr $31                  # Retorna o código da tecla em $v0

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

    lui $11, 0xffff
    lw $12, 0($11)
    beq $12, $0, fimMovePlayer
    lw $12, 4($11) #verifica se houve leitura do teclado
    
    # Verifica se a tecla "A" (esquerda) foi pressionada
    li $8, 97              # Código ASCII para "A"
    beq $12, $8, movePlayerEsquerda

    # Verifica se a tecla "D" (direita) foi pressionada
    li $8, 100             # Código ASCII para "D"
    beq $12, $8, movePlayerDireita

    j fimMovePlayer         # Se nenhuma tecla válida for pressionada, sai da função

movePlayerEsquerda:
    jal forPlayerEsq
  
    bne $3, $0, fimMovePlayer
    
    add $4, $25, 0
    jal forRestaurar2
    addi $25, $25, -4       # Move o player 4 pixels para a esquerda
    add $4, $25, 0
    jal criarPlayer
    
    j fimMovePlayer
    
movePlayerDireita:
    jal forNpcArma
    bne $3, $0, fimMovePlayer
    add $4, $25, 0
    jal forRestaurar2
    addi $25, $25, 4        # Move o player 4 pixels para a direita
    add $4, $25, 0
    jal criarPlayer
    
    j fimMovePlayer
    
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

    syscall
    jr $31                 

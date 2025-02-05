.text
main:
    # Cenário da tela
    jal criarCenario
    
    # Cópia do cenário
    addi $4, $0, 32768
    jal criarCenario
    
    # Cria o NPC
    addi $4, $0, 0
    jal criarNpc
    
    # Cria o player
    jal criarPlayer

    # Inicializa a posição do player
    addi $25, $0, 0  # $25 armazena a posição do player

loopPrincipal:
    # Movimentação do NPC (função existente)
    add $4, $25, 30632
    jal forRestaurar
    
    addi $25, $25, -4
    add $4, $0, $25
    jal criarNpc
    
    jal timer

    # Movimentação do player (nova função)
    jal forMovePlayer


    j loopPrincipal

# Função de delay 
timer:
    sw $16, 0($29)
    addi $29, $29, -4
    addi $16, $0, 500000
forT:
    beq $16, $0, fimT
    nop
    nop
    addi $16, $16, -1      
    j forT                  
fimT:
    addi $29, $29, 4                                                    
    lw $16, 0($29)          
    jr $31

fim:
    addi $2, $0, 10
    syscall

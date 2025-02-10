.text
.globl posMoveMike, posTiro, posMoveTiro, fim
main:
    # cenario da tela
    jal criarCenario
    
    # copia do cenario
    addi $4, $0, 32768
    jal criarCenario
    
    addi $4, $0, 30120
    jal criarNpc
    add $24, $0, 30120
    addi $4, $0, 29716 # pos inicial
    jal criarPlayer
    add $25, $0, 29716
    
    
    addi $23, $0, 0
    
    addi $17, $0, 5 #vida npc
    addi $16, $0, 5 #vida player
forPrincipal:
    jal forNpcArma
    bne $3, $0, posColisao
    add $4, $24, 512
    jal forRestaurar
    
    addi $24, $24, -4
    add $4, $0, $24
    jal criarNpc
    
    posColisao:
  
    jal timer
    
    lui $11, 0xffff
    lw $12, 0($11) #verifica se houve mudanca no buffer
    
    beq $12, $0, posMoveMike
    lw $12, 4($11) #pega se a tecla correta
    
    # Verifica se a tecla "A" (esquerda) foi pressionada
    li $8, 97              # Código ASCII para "A"
    beq $12, $8, movePlayerEsquerda

    # Verifica se a tecla "D" (direita) foi pressionada
    li $8, 100             # Código ASCII para "D"
    beq $12, $8, movePlayerDireita
    
    
posMoveMike:
    bgt $20, $0, moveTiro
    li $8, 32 #ascii da barra de espaco
    beq $8, $12, forTiro
   
posTiro:
    j forPrincipal
    
fimforPrincipal:
	jr $31
    
posMoveTiro:
       jal timer2
       j posTiro
    
timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 50000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
       
       
       
timer2: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 250
forT2:  beq $16, $0, fimT2
       nop
       nop
       addi $16, $16, -1      
       j forT2                  
fimT2:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
fim:	
       addi $2, $0, 10
	syscall

.text
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
    
forMovenpc:
    jal forNpcArma
    bne $3, $0, posColisao
    add $4, $24, 512
    jal forRestaurar
    
    addi $24, $24, -4
    add $4, $0, $24
    jal criarNpc
    
    posColisao:
  
    jal timer
    jal forMovePlayer
    j forMovenpc
    
fimMoveNpc:
	jr $31
    
    
    
timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 5000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
       
fim:	
       addi $2, $0, 10
	syscall

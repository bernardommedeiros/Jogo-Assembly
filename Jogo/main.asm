#loopPlayer:
 #   add $4, $25, 30632
 #   jal forRestaurar2
    
  #  addi $25, $25, 4 #beq esq
   # add $4, $0, $25
   # jal criarPlayer
    
.text
main:
    # cenario da tela
    jal criarCenario
    
    # copia do cenario
    addi $4, $0, 32768
    jal criarCenario
    
    addi $4, $0, 0
    jal criarNpc
    
forLoop:
    add $4, $25, 30632
    jal forRestaurar
    
    addi $25, $25, -4
    add $4, $0, $25
    jal criarNpc
    
       jal timer
    j forLoop
    
    
    
 
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
       
fim:	
       addi $2, $0, 10
	syscall

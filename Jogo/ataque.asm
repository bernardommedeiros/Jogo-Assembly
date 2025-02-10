.globl forTiro, moveTiro

forTiro:

    sw $31, 0($sp)          # Salva o endereÃ§o de retorno
    addi $sp, $sp, -4
    
    sw $8, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $9, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
    sw $10, 0($sp)          # Salva o endereÃ§o de retorno
    addi $sp, $sp, -4
    
    sw $11, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $12, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $13, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $14, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $15, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    
    beq $20, $0, espacoPressionado
    bgt $20, $0, moveTiro #se 20 for maior que 0
   
   j fimTiro
   
espacoPressionado:
  beq $20, $0, criarTiro
  bgt $20, $0, moveTiro
  j fimTiro
   
criarTiro:
    addi $20, $25, -6048
    
    lui $12, 0x1001
    add $12, $12, $20
    
    ori $10, $0, 0x000000
    sw $10, 0($12)
    
    j fimTiro
    
    
moveTiro:
   jal forTiroNpc
 
   bne $3, $0, desfazTiro
   
  
   lui $12, 0x1001
   add $12, $12, 32768
   add $12, $12, $20
    
  
   lw $10, 0($12)
   
   lui $14, 0x1001
   add $14, $14, $20 # att posicao do tiro
   sw $10, 0($14)
   
   addi $14, $14, 12
   
   ori $15, $0, 0x000000
   sw $15, 0($14)
   
   addi $20, $20, 12
   
   j fimTiro2


desfazTiro:
   lui $11, 0x1001
   addi $11, $11, 32768
   add $11, $11, $20
   addi $20, $0, 0
   
   j fimTiro
   
   
fimTiro:

    addi $sp, $sp, 4
    lw $15, 0($sp)
    
    addi $sp, $sp, 4
    lw $14, 0($sp)
    
    addi $sp, $sp, 4
    lw $13, 0($sp)
    
    addi $sp, $sp, 4
    lw $12, 0($sp)
    
    addi $sp, $sp, 4
    lw $11, 0($sp)
    
    addi $sp, $sp, 4
    lw $10, 0($sp)
    
    addi $sp, $sp, 4
    lw $9, 0($sp)
    
    addi $sp, $sp, 4
    lw $8, 0($sp)
    
    addi $sp, $sp, 4
    lw $31, 0($sp)
    j posTiro


fimTiro2:

    addi $sp, $sp, 4
    lw $15, 0($sp)
    
    addi $sp, $sp, 4
    lw $14, 0($sp)
    
    addi $sp, $sp, 4
    lw $13, 0($sp)
    
    addi $sp, $sp, 4
    lw $12, 0($sp)
    
    addi $sp, $sp, 4
    lw $11, 0($sp)
    
    addi $sp, $sp, 4
    lw $10, 0($sp)
    
    addi $sp, $sp, 4
    lw $9, 0($sp)
    
    addi $sp, $sp, 4
    lw $8, 0($sp)
    
    addi $sp, $sp, 4
    lw $31, 0($sp)
    j posMoveTiro

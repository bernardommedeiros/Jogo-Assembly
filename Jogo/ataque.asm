.globl forTiro

forTiro:

    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $8, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $9, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
    sw $10, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $11, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $12, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $13, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
     
   lui $9, 0xffff
   lw $10, 0($9) #verifica se houve mudanca no buffer
   beq $10, $0, fimTiro
   
   lw $10, 4($9)
   
   li $8, 32 #ascii da barra de espaco
   beq $8, $10, espacoPressionado
   
   j moveTiro
   
espacoPressionado:
  beq $20, $0, criarTiro
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
   
   addi $14, $14, 4
   
   ori $15, $0, 0x000000
   sw $15, 0($14)
   
   addi $20, $20, 4
   
   j fimTiro


desfazTiro:
   lui $11, 0x1001
   addi $11, $11, 32768
   add $11, $11, $20
   addi $20, $0, 0
   
   j fimTiro
   
   
fimTiro:

   sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $13, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $12, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $11, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $10, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
    sw $9, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $8, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
   jr $31

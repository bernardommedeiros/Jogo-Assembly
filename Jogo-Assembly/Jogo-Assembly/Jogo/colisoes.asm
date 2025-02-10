.text
.globl forPlayerEsq, forNpcArma, forTiroNpc


# checar colisao do player com a parede esquerda

forPlayerEsq:
    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $21, 0($sp)           # Salva $21
    addi $sp, $sp, -4

    sw $10, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    
    addi $3, $0, 0 # 0 = nao colidiu
    
    addi $21, $25, -12   # esquerda do personagem
    addi $10, $0,  29696 # parede da esquerda
    
    beq $21, $10, colisaoPlayerEsq
	
    j retorno
	
colisaoPlayerEsq:
    addi $3, $0, 1
    j retorno


retorno:
    addi $sp, $sp, 4
    lw $10, 0($sp)
    
    addi $sp, $sp, 4
    lw $21, 0($sp)
    
    addi $sp, $sp, 4
    lw $31, 0($sp)
    
    jr $31	
    
    
    
    

    
# Checar colisao do npc com a arma 
	
forNpcArma:
    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $21, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $18, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
    
   addi $3, $0, 0 # 0 - nao colidiu
   
   addi $21, $25, -6052 # endereço da arma
   addi $18, $24, -6144 # endereço da esquerda do npc
   
   beq $21, $18, colisaoNpcArma
   
   addi $21, $25, -6056 # mais a esquerda da arma
   beq $21, $18, colisaoNpcArma
   
   j retorno2
colisaoNpcArma: 
   addi $3, $0, 1
   
   addi $16, $16, -1
   ble $16, $0, fim
   
   j retorno2


retorno2:
    addi $sp, $sp, 4
    lw $18, 0($sp)
    
    addi $sp, $sp, 4
    lw $21, 0($sp)
    
    addi $sp, $sp, 4
    lw $31, 0($sp)
    
    jr $31
    
    

# Checar colisao do tiro com o npc
    
forTiroNpc:
    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    
    sw $21, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    
    sw $18, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
    
   addi $3, $0, 0 # 0 - nao colidiu
   
   addi $18, $24, -6144 # endereço da esquerda do npc
   
   # $23 -> posicao do tiro
   bge $20, $18, colisaoTiroNpc
   
   # se nao colidiu -> retorno2
   j retorno3
   
colisaoTiroNpc: 
   addi $3, $0, 1
   
   addi $17, $17, -1
   ble $17, $0, fim
   j retorno3


retorno3:
    addi $sp, $sp, 4
    lw $18, 0($sp)
    
    addi $sp, $sp, 4
    lw $21, 0($sp)
    
    addi $sp, $sp, 4
    lw $31, 0($sp)
    
    jr $31    

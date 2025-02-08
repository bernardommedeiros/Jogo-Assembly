.text
.globl forPlayerEsq, forNpcArma

forPlayerEsq:
    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    sw $21, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    sw $25, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    sw $10, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    sw $3, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
	addi $3, $0, 0
	addi $21, $25, -12
	ori $10, $0,  29696
	beq $21, $10, colisaoPlayerEsq
	
	j retorno
	
colisaoPlayerEsq:
	addi $3, $0, 1
	
	j retorno


retorno:
    addi $sp, $sp, 4
    lw $3, 0($sp)
    addi $sp, $sp, 4
    lw $10, 0($sp)
    addi $sp, $sp, 4
    lw $25, 0($sp)
    addi $sp, $sp, 4
    lw $21, 0($sp)
    addi $sp, $sp, 4
    lw $31, 0($sp)
	jr $31	
	
forNpcArma:

    sw $31, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    sw $21, 0($sp)           # Salva $9
    addi $sp, $sp, -4
    sw $18, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    sw $24, 0($sp)          # Salva o endereço de retorno
    addi $sp, $sp, -4
    sw $3, 0($sp)          # Salva $10
    addi $sp, $sp, -4
    
	addi $3, $0, 0
	addi $21, $25, -6052
	addi $18, $24, -6144

	beq $21, $18, colisaoNpcArma
	
	
	addi $21, $25, -6056

	beq $21, $18, colisaoNpcArma

	j retorno2
colisaoNpcArma:
	addi $3, $0, 1
	
	j retorno2


retorno2:
addi $sp, $sp, 4
    lw $3, 0($sp)
    addi $sp, $sp, 4
    lw $24, 0($sp)
    addi $sp, $sp, 4
    lw $18, 0($sp)
    addi $sp, $sp, 4
    lw $21, 0($sp)
    addi $sp, $sp, 4
    lw $31, 0($sp)
	jr $31	

	jr $31
		

.text
.globl criarNpc2, forRestaurar2
criarNpc2:
	ori $14, $0, 0x346796 #npc - olho
        ori $15, $0, 0x4C7428 #npc - palpebras/maos e detalhes
 	ori $16, $0, 0x7EBF3F #npc - corpo
 	ori $17, $0, 0xC6823C  #npc - chifre
	ori $22, $0, 0x020000 #npc - dentro do olho
	ori $23, $0, 0xD8D8D8#npc - sorriso
	#reg 24 sem uso

	
	lui $8, 0x1001
	addi $8, $8, 29716 # pos inicial
	add $8, $8, $4
designNpc2:
#pes 8 pixels - 1 altura
sw $16, 0($8)
sw $16, 4($8)
sw $16, 8($8)
	
sw $16, 28($8)  
sw $16, 32($8)  
sw $16, 36($8)  

#perna esq e direita - 5 altura

sw $16, -504($8)
sw $16, -1016($8)
sw $16, -1528($8)
sw $16, -2040($8)
sw $16, -2552($8)

sw $16, -484($8)   # -476 - 12 = -488
sw $16, -996($8)  # -988 - 12 = -1000
sw $16, -1508($8)  # -1500 - 12 = -1512
sw $16, -2020($8)  # -2012- 12 = -2024
sw $16, -2532($8)  # -2524 - 12 = -2536

#parte baixa do corpo
sw $16, -2548($8)
sw $16, -2544($8)
sw $16, -2540($8)
sw $16, -2032($8)
sw $16, -2028($8)
sw $16, -2536($8)
#corpo 
# 1 linha
sw $16, -3068($8)   # -2548 - 512 = -3060
sw $16, -3064($8)   # -2548 - 512 = -3060
sw $16, -3060($8)   # -2548 - 512 = -3060
sw $16, -3056($8)   # -2544 - 512 = -3056
sw $16, -3052($8)   # -2540 - 512 = -3052
sw $16, -2544($8)   # -2032 - 512 = -2544
sw $16, -2540($8)   # -2028 - 512 = -2540
sw $16, -3048($8)   # -2536 - 512 = -3048
sw $16, -3044($8)   # -2536 - 512 = -3048
sw $16, -3040($8)   # -2536 - 512 = -3048

#2 linha

sw $16, -3584($8) 
sw $16, -3580($8) 
sw $16, -3576($8) 
sw $16, -3572($8)  
sw $23, -3568($8)  
sw $23, -3564($8)  
sw $16, -3056($8)  
sw $16, -3052($8) 
sw $16, -3560($8)  
sw $16, -3556($8)  
sw $16, -3552($8)  
sw $16, -3548($8) 

#3 linha
sw $16, -4096($8)  # -3584 - 512 = -4096
sw $16, -4092($8)  # -3580 - 512 = -4092
sw $16, -4088($8)  # -3576 - 512 = -4088
sw $16, -4084($8)  # -3572 - 512 = -4084
sw $16, -4080($8)  # -3568 - 512 = -4080
sw $16, -4076($8)  # -3564 - 512 = -4076
sw $16, -3568($8)  # -3056 - 512 = -3568
sw $16, -3564($8)  # -3052 - 512 = -3564
sw $16, -4072($8)  # -3560 - 512 = -4072
sw $16, -4068($8)  # -3556 - 512 = -4068
sw $16, -4064($8)  # -3552 - 512 = -4064
sw $16, -4060($8)  # -3548 - 512 = -4060


jr $31

forRestaurar2:
	sw $31, 0($sp) #stack point 29 - salva o reg 31 na pilha
	addi $sp, $sp, -4
	sw $8, 0($sp) #stack point 29 - salva o reg 8 na pilha
	addi $sp, $sp, -4
	sw $9, 0($sp) #stack point 29 - salva o reg 9 na pilha
	addi $sp, $sp, -4
	sw $10, 0($sp) #stack point 29 - salva o reg 10 na pilha
	addi $sp, $sp, -4
	sw $11, 0($sp) #stack point 29 - salva o reg 11 na pilha
	addi $sp, $sp, -4
	sw $12, 0($sp) #stack point 29 - salva o reg 12 na pilha
	addi $sp, $sp, -4
	sw $13, 0($sp) #stack point 29 - salva o reg 13 na pilha
	addi $sp, $sp, -4
	sw $14, 0($sp) #stack point 29 - salva o reg 14 na pilha
	addi $sp, $sp, -4
	sw $15, 0($sp) #stack point 29 - salva o reg 15 na pilha
	addi $sp, $sp, -4
	sw $21, 0($sp) #stack point 29 - salva o reg 21 na pilha
	addi $sp, $sp, -4
#Essas instruÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes salvam os registradores 8, 9, 10, 11, 12, 13, 14, 15, 21 e 31 na pilha. O ponteiro da pilha ($sp) ÃƒÆ’Ã‚Â© decrementado para armazenar cada registrador.
	
	lui $8, 0x1001
	add $8, $8, $4 #$4 canto inferior esq do npc # Adiciona o valor de $4 a $8 para definir a posiÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o inicial
	
	lui $9 0x1001 #copia
	add $9, $9, $4 # Adiciona o valor de $4 a $9 para definir a posiÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o inicial da cÃƒÆ’Ã‚Â³pia
	addi $9, $9, 32768# Adiciona um offset de 32768 a $9
	
	addi $10, $0, 40 #linhas a serem copiadas
	addi $11, $0, 0 #contador das linhas - pra cima 
	addi $12, $0, 24 #numero de pixels para copiar em cada linha
	addi $13, $0, 0 #contador de pixels - para o lado
	
forColuna2: #percorre as linhas, copiando colunas de pixels de uma regiÃƒÆ’Ã‚Â£o de memÃƒÆ’Ã‚Â³ria para outra.

	beq $11, $10, retornoRest2 # Se $11 (contador de linhas) alcanÃƒÆ’Ã‚Â§ar $10, sai do loop
	
	add $14, $0, $8 # Guarda o endereÃƒÆ’Ã‚Â§o inicial de $8 em $14
	add $15, $0, $9 # Guarda o endereÃƒÆ’Ã‚Â§o inicial de $9 em $15
	forLinha2:  #percorre os pixels em cada linha, copiando-os de um endereÃƒÆ’Ã‚Â§o para outro.
	beq $12, $13, prxColuna2  # Se $13 (contador de pixels) alcanÃƒÆ’Ã‚Â§ar $12, vai para a prÃƒÆ’Ã‚Â³xima coluna
	lw $21, 0($9) # Carrega o pixel do endereÃƒÆ’Ã‚Â§o $9 para $21
	
	sw $21, 0($8) # Armazena o pixel do $21 no endereÃƒÆ’Ã‚Â§o $8
	
	addi $8, $8, 4 #AvanÃƒÆ’Ã‚Â§a para o prÃƒÆ’Ã‚Â³ximo pixel em $8
	addi $9, $9, 4 #AvanÃƒÆ’Ã‚Â§a para o prÃƒÆ’Ã‚Â³ximo pixel em $9 (copia)
	
	addi $13, $13, 1 # Incrementa o contador de pixels
	
	j forLinha2
	
prxColuna2: #Ajusta os endereÃƒÆ’Ã‚Â§os para a prÃƒÆ’Ã‚Â³xima linha e reseta o contador de pixels
	addi $13, $0, 0 # Reseta o contador de pixels
	addi $9, $15, -512 # Ajusta o endereÃƒÆ’Ã‚Â§o de $9 para a prÃƒÆ’Ã‚Â³xima linha
	addi $8, $14, -512 # Ajusta o endereÃƒÆ’Ã‚Â§o de $8 para a prÃƒÆ’Ã‚Â³xima linha
	addi $11, $11, 1 #Incrementa o contador de linhas
	
	j forColuna2
retornoRest2: #Essas instruÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Âµes restauram os registradores da pilha e retornam ao endereÃƒÆ’Ã‚Â§o salvo em $31.
	add $sp, $sp, 4
	lw $21, 0($sp)
	
	add $sp, $sp, 4
	lw $15, 0($sp)
	
	add $sp, $sp, 4
	lw $14, 0($sp)
	
	add $sp, $sp, 4
	lw $13, 0($sp)
	
	add $sp, $sp, 4
	lw $12, 0($sp)
	
	add $sp, $sp, 4
	lw $11, 0($sp)
	
	add $sp, $sp, 4
	lw $10, 0($sp)
	
	add $sp, $sp, 4
	lw $9, 0($sp)
	
	add $sp, $sp, 4
	lw $8, 0($sp)
	
	add $sp, $sp, 4
	lw $31, 0($sp)
	jr $31
	
fim:	
       addi $2, $0, 10
	syscall

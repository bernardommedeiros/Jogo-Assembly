.text
.globl criarPlayer, forRestaurar2
criarPlayer:

	sw $31, 0($sp) #stack point 29 - salva o reg 31 na pilha
	addi $sp, $sp, -4
	
	sw $14, 0($sp) #stack point 29 - salva o reg 8 na pilha
	addi $sp, $sp, -4
	
	sw $15, 0($sp) #stack point 29 - salva o reg 9 na pilha
	addi $sp, $sp, -4
	
	sw $16, 0($sp) #stack point 29 - salva o reg 10 na pilha
	addi $sp, $sp, -4
	
	sw $17, 0($sp) #stack point 29 - salva o reg 11 na pilha
	addi $sp, $sp, -4
	
	sw $22, 0($sp) #stack point 29 - salva o reg 12 na pilha
	addi $sp, $sp, -4
	
	sw $23, 0($sp) #stack point 29 - salva o reg 13 na pilha
	addi $sp, $sp, -4
	
	
	ori $14, $0, 0x000000 #olho e contorno arma
        ori $15, $0, 0xD1C0A6 #chifre
 	ori $16, $0, 0x7EBF3F #npc - corpo
 	ori $17, $0, 0xFDFFFD  #npc - olho e sorriso
	ori $22, $0, 0x32679A #npc - olho azul
	ori $23, $0, 0xCCCCCC #arma
	#reg 23, 24, 14 sem uso

	
	lui $8, 0x1001
	
	add $8, $8, $4
	
designPlayer:
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

sw $16, -484($8)  
sw $16, -996($8)  
sw $16, -1508($8)  
sw $16, -2020($8)  
sw $16, -2532($8)  

#parte baixa do corpo
sw $16, -2548($8)
sw $16, -2544($8)
sw $16, -2540($8)

sw $16, -2536($8)

#corpo 
# 1 linha
sw $16, -3068($8)   
sw $16, -3064($8)   
sw $16, -3060($8)  
sw $16, -3056($8)  
sw $16, -3052($8)   
sw $16, -2544($8)  
sw $16, -2540($8)   
sw $16, -3048($8)   
sw $16, -3044($8)  
sw $16, -3040($8)   

#2 linha

sw $16, -3584($8) 
sw $16, -3580($8) 
sw $17, -3576($8) 
sw $17, -3572($8)  
sw $17, -3568($8)  
sw $17, -3564($8)  
sw $17, -3560($8)  
sw $17, -3556($8)  
sw $16, -3552($8)  
sw $16, -3548($8) 

#3 linha
sw $16, -4100($8)  # -3584 - 512 = -4096
sw $16, -4096($8)  # -3584 - 512 = -4096
sw $16, -4092($8)  # -3580 - 512 = -4092
sw $16, -4088($8)  # -3576 - 512 = -4088
sw $16, -4084($8)  # -3572 - 512 = -4084
sw $16, -4080($8)  # -3568 - 512 = -4080
sw $16, -4076($8)  # -3564 - 512 = -4076
sw $16, -4072($8)  # -3560 - 512 = -4072
sw $16, -4068($8)  # -3556 - 512 = -4068
sw $17, -4064($8)  # -3552 - 512 = -4064
sw $16, -4060($8)  # -3548 - 512 = -4060
sw $16, -4056($8)  # -3548 - 512 = -4060
sw $16, -4060($8)  # -3548 - 512 = -4060
#4 linha - alterado
sw $16, -4616($8)  
sw $16, -4612($8)  
sw $16, -4608($8)  
sw $16, -4604($8)  
sw $16, -4600($8)  
sw $17, -4596($8)  
sw $17, -4592($8)  
sw $17, -4588($8)  
sw $17, -4584($8)  
sw $16, -4580($8) 
sw $16, -4576($8)  
sw $16, -4572($8) 
sw $16, -4568($8)  
sw $16, -4564($8)  

#5 linha - alterado
sw $16, -5128($8)  # -4608 - 512 = -5120
sw $16, -5124($8)  # -4608 - 512 = -5120
sw $16, -5120($8)  # -4608 - 512 = -5120
sw $16, -5116($8)  # -4604 - 512 = -5116
sw $17, -5112($8)  # -4600 - 512 = -5112
sw $22, -5108($8)  # -4596 - 512 = -5108
sw $22, -5104($8)  # -4592 - 512 = -5104
sw $22, -5100($8)  # -4588 - 512 = -5100
sw $22, -5096($8)  # -4584 - 512 = -5096
sw $17, -5092($8)  # -4580 - 512 = -5092
sw $16, -5088($8)  # -4576 - 512 = -5088
sw $16, -5084($8)  # -4572 - 512 = -5084
sw $16, -5080($8)  # -4576 - 512 = -5088
sw $16, -5076($8)  # -4572 - 512 = -5084

#6 linha - alterado
sw $16, -5640($8)  # -5120 - 512 = -5632
sw $16, -5636($8)  # -5120 - 512 = -5632
sw $16, -5632($8)  # -5120 - 512 = -5632
sw $16, -5628($8)  # -5116 - 512 = -5628
sw $17, -5624($8)  # -5112 - 512 = -5624
sw $22, -5620($8)  # -5108 - 512 = -5620
sw $14, -5616($8)  # -5104 - 512 = -5616
sw $14, -5612($8)  # -5100 - 512 = -5612
sw $22, -5608($8)  # -5096 - 512 = -5608
sw $17, -5604($8)  # -5092 - 512 = -5604
sw $16, -5600($8)  # -5088 - 512 = -5600
sw $16, -5596($8)  # -5084 - 512 = -5596
sw $16, -5592($8)  # -5084 - 512 = -5596
sw $16, -5588($8)  # -5084 - 512 = -5596

#7 linha - alterado
sw $16, -6152($8)  # -5632 - 512 = -6144
sw $16, -6148($8)  # -5628 - 512 = -6140
sw $16, -6144($8)  # -5632 - 512 = -6144
sw $16, -6140($8)  # -5628 - 512 = -6140
sw $17, -6136($8)  # -5624 - 512 = -6136
sw $22, -6132($8)  # -5620 - 512 = -6132
sw $14, -6128($8)  # -5616 - 512 = -6128
sw $14, -6124($8)  # -5612 - 512 = -6124
sw $22, -6120($8)  # -5608 - 512 = -6120
sw $17, -6116($8)  # -5604 - 512 = -6116
sw $16, -6112($8)  # -5600 - 512 = -6112
sw $16, -6108($8)  # -5596 - 512 = -6108
sw $16, -6104 ($8)  # -5596 - 512 = -6108
sw $16, -6100($8)  # -5596 - 512 = -6108

#8 linha
sw $16, -6660($8)  # -6140 - 512 = -6652
sw $16, -6656($8)  # -6144 - 512 = -6656
sw $16, -6652($8)  # -6140 - 512 = -6652
sw $17, -6648($8)  # -6136 - 512 = -6648
sw $22, -6644($8)  # -6132 - 512 = -6644
sw $22, -6640($8)  # -6128 - 512 = -6640
sw $22, -6636($8)  # -6124 - 512 = -6636
sw $22, -6632($8)  # -6120 - 512 = -6632
sw $17, -6628($8)  # -6116 - 512 = -6628
sw $16, -6624($8)  # -6112 - 512 = -6624
sw $16, -6620($8)  # -6108 - 512 = -6620
sw $16, -6616($8)  # -6108 - 512 = -6620

#cabeca
#9 linha

sw $16, -7168($8)  # -6656 - 512 = -7168
sw $16, -7164($8)  # -6652 - 512 = -7164
sw $16, -7160($8)  # -6648 - 512 = -7160
sw $17, -7156($8)  # -6644 - 512 = -7156
sw $17, -7152($8)  # -6640 - 512 = -7152
sw $17, -7148($8)  # -6636 - 512 = -7148
sw $17, -7144($8)  # -6632 - 512 = -7144
sw $16, -7140($8)  # -6628 - 512 = -7140
sw $16, -7136($8)  # -6624 - 512 = -7136
sw $16, -7132($8)  # -6620 - 512 = -7132

#10 linha

sw $16, -7676($8)  # -7164 - 512 = -7676
sw $16, -7672($8)  # -7160 - 512 = -7672
sw $16, -7668($8)  # -7156 - 512 = -7668
sw $16, -7664($8)  # -7152 - 512 = -7664
sw $16, -7660($8)  # -7148 - 512 = -7660
sw $16, -7656($8)  # -7144 - 512 = -7656
sw $16, -7652($8)  # -7140 - 512 = -7652
sw $16, -7648($8)  # -7136 - 512 = -7648

#11 linha
sw $16, -8184($8)  
sw $16, -8180($8) 
sw $16, -8176($8) 
sw $16, -8172($8) 
sw $16, -8168($8) 
sw $16, -8164($8)  

#chifre esq
sw $15, -8188($8)  
sw $15, -8700($8)
#chifre dir
sw $15, -8160($8)  
sw $15, -8672($8) 

#braco esq
sw $16, -4620($8)  

sw $16, -4108($8) 
sw $16, -3596($8)  
sw $16, -3084($8)
sw $16, -2572($8)

#braco dir
sw $16, -4560($8)  
sw $16, -4556($8)
sw $16, -4552($8)

#arma 
#contorno
#colisao
sw $14, -6052($8)
#################
sw $14, -5544($8)
sw $14, -6056($8)
sw $14, -6568($8)
sw $14, -7080($8)
sw $14, -7084($8)
sw $14, -7088($8)
sw $14, -7092($8)
sw $14, -7096($8)
sw $14, -7100($8)

#detalhe
sw $14, -7612($8)
sw $14, -7616($8)
sw $14, -8128($8)

sw $14, -7104($8)
sw $14, -7108($8)
sw $14, -6596($8)
sw $14, -6084($8)
sw $14, -5572($8)
sw $14, -5060($8)
sw $14, -4548($8)
sw $14, -4036($8)
sw $14, -3524($8)
sw $14, -3520($8)
sw $14, -3516($8)
sw $14, -3512($8)
sw $14, -4024($8)
sw $14, -4536($8)
sw $14, -5048($8)
sw $14, -5044($8)
sw $14, -5040($8)
sw $14, -5036($8)
sw $14, -5032($8)


sw $14, -5564($8)
sw $14, -5568($8)

#dentro
sw $23, -6572($8)
sw $23, -6576($8)
sw $23, -6580($8)
sw $23, -6584($8)
sw $23, -6588($8)
sw $23, -6592($8)

sw $23, -6060($8)
sw $23, -6064($8)
sw $23, -6068($8)
sw $23, -6072($8)
sw $23, -6076($8)
sw $23, -6080($8)

sw $23, -5548($8)
sw $23, -5552($8)
sw $23, -5556($8)
sw $23, -5560($8)

sw $23, -5052($8)
sw $23, -5056($8)
sw $23, -4540($8)
sw $23, -4544($8)
sw $23, -4028($8)
sw $23, -4032($8)



	addi $sp, $sp, 4
	lw $23, 0($sp) #stack point 29 - salva o reg 8 na pilha
	
	addi $sp, $sp, 4
	lw $22, 0($sp) #stack point 29 - salva o reg 9 na pilha
	
	addi $sp, $sp, 4
	lw $17, 0($sp) #stack point 29 - salva o reg 10 na pilha
	
	addi $sp, $sp, 4
	lw $16, 0($sp) #stack point 29 - salva o reg 11 na pilha
	
	addi $sp, $sp, 4
	lw $15, 0($sp) #stack point 29 - salva o reg 12 na pilha
	
	addi $sp, $sp, 4
	lw $14, 0($sp) #stack point 29 - salva o reg 13 na pilha
	
	addi $sp, $sp, 4
        lw $31, 0($sp) #stack point 29 - salva o reg 31 na pilha
	
	
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



	lui $8, 0x1001
	add $8, $8, $4 #$4 canto inferior esq do npc # Adiciona o valor de $4 a $8 para definir a posiÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o inicial
	
	addi $8, $8, -12
	
	lui $9 0x1001 #copia
	addi $9, $9, -12
	
	add $9, $9, $4 # Adiciona o valor de $4 a $9 para definir a posiÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o inicial da cÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³pia
	addi $9, $9, 32768# Adiciona um offset de 32768 a $9

	addi $10, $0, 18 #linhas a serem copiadas
	addi $11, $0, 0 #contador das linhas - pra cima 
	addi $12, $0, 27 #numero de pixels para copiar em cada linha
	addi $13, $0, 0 #contador de pixels - para o lado
	
forColuna2: #percorre as linhas, copiando colunas de pixels de uma regiÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o de memÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³ria para outra.

	beq $11, $10, retornoRest2 # Se $11 (contador de linhas) alcanÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ar $10, sai do loop
	
	add $14, $0, $8 # Guarda o endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o inicial de $8 em $14
	add $15, $0, $9 # Guarda o endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o inicial de $9 em $15
	forLinha2:  #percorre os pixels em cada linha, copiando-os de um endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o para outro.
	beq $12, $13, prxColuna2  # Se $13 (contador de pixels) alcanÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ar $12, vai para a prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³xima coluna
	lw $21, 0($9) # Carrega o pixel do endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o $9 para $21
	
	sw $21, 0($8) # Armazena o pixel do $21 no endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o $8
	
	addi $8, $8, 4 #AvanÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§a para o prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³ximo pixel em $8
	addi $9, $9, 4 #AvanÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§a para o prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³ximo pixel em $9 (copia)
	
	addi $13, $13, 1 # Incrementa o contador de pixels
	
	j forLinha2
	
prxColuna2: #Ajusta os endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§os para a prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³xima linha e reseta o contador de pixels
	addi $13, $0, 0 # Reseta o contador de pixels
	addi $9, $15, -512 # Ajusta o endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o de $9 para a prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³xima linha
	addi $8, $14, -512 # Ajusta o endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o de $8 para a prÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³xima linha
	addi $11, $11, 1 #Incrementa o contador de linhas
	
	j forColuna2
retornoRest2: #Essas instruÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Âµes restauram os registradores da pilha e retornam ao endereÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§o salvo em $31.
	
	
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

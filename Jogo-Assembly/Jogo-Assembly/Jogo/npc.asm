.text
.globl criarNpc, forRestaurar
criarNpc:

	sw $31, 0($sp)          # Salva o endereço de retorno
    	addi $sp, $sp, -4
    	
        sw $14, 0($sp)           # Salva $8
    	addi $sp, $sp, -4
    	
    	sw $15, 0($sp)           # Salva $9
    	addi $sp, $sp, -4
    	
    	sw $16, 0($sp)          # Salva $10
    	addi $sp, $sp, -4
    	
    	sw $17, 0($sp)          # Salva o endereço de retorno
    	addi $sp, $sp, -4
    	
        sw $22, 0($sp)           # Salva $8
    	addi $sp, $sp, -4
    	
    	sw $23, 0($sp)           # Salva $9
    	addi $sp, $sp, -4
    	
    	sw $24, 0($sp)          # Salva $10
    	addi $sp, $sp, -4

	ori $14, $0, 0xf85da6 #npc - rosa antena
    ori $15, $0, 0x3D2F58 #npc - detalhes escuros
 	ori $16, $0, 0x674E9A #npc - corpo
 	ori $17, $0, 0x383A62  #npc - cauda
	ori $22, $0, 0x775BAD#npc - corpo dentro
	ori $23, $0, 0xD8D8D8#npc - sorriso
	ori $24, $0, 0x674E9A#npc - palpebras	

	
	lui $8, 0x1001

	add $8, $8, $4
	
designNpc:
#pÃƒÆ’Ã‚Â© esquerdo
	sw $16, 0($8)
	sw $16, 4($8)
	sw $16, 8($8)
	sw $16, 12($8)
	sw $16, 16($8)
	sw $16, 20($8)
	sw $16, -496($8)
	sw $16, -492($8)
	sw $16, -1008($8)
	sw $16, -1520($8)
	sw $16, -1004($8)
	sw $16, -1516($8)
	
	sw $16, -2028($8)
	sw $16, -2032($8)

	
	
	sw $16, 512($8)
	sw $16, 516($8)
	sw $16, 520($8)
	sw $16, 524($8)
	sw $16, 528($8)
	sw $16, 532($8)
	#detalhe
	sw $15, 536($8)
	sw $15, 540($8)
	sw $15, 24($8)
	sw $15, 28($8)
	sw $15, -484($8)
	sw $15, -996($8)
	sw $15, -1508($8)
	sw $15, -488($8)
	sw $15, -1000($8)
	sw $15, -1512($8)
	sw $15, -2024($8)
	sw $15, -2020($8)
	
	#pÃƒÆ’Ã‚Â© direito
sw $15, 52($8)
sw $15, 56($8)
sw $15, -460($8)
sw $15, -456($8)
sw $15, -972($8)
sw $15, -1484($8)
sw $15, -968($8)
sw $15, -1480($8)

sw $15, -1992($8)
sw $15, -1996($8)

sw $15, 564($8)
sw $15, 568($8)

sw $16, 572($8)
sw $16, 576($8)
sw $16, 60($8)
sw $16, 64($8)
sw $16, -448($8)
sw $16, -960($8)
sw $16, -1472($8)
sw $16, -452($8)
sw $16, -964($8)
sw $16, -1476($8)
sw $16, -1988($8)
sw $16, -1984($8)

sw $16, 576($8)
sw $16, 580($8)
sw $16, 64($8)
sw $16, 68($8)
sw $16, 584($8)
sw $16, 588($8)
sw $16, 72($8)
sw $16, 76($8)
sw $16, 592($8)
sw $16, 80($8)

#detalhe parte de baixo
sw $15, -2016($8)
sw $15, -1504($8)

sw $15, -988($8)
sw $15, -984($8)
sw $15, -980($8)
sw $15, -476($8)
sw $15, -472($8)
sw $15, -468($8)
sw $15, -1488($8)
sw $15, -1484($8)
sw $15, -2000($8)
sw $15, -1996($8)

#corpo
sw $22, -1492($8)
sw $22, -1496($8)
sw $22, -1500($8)
sw $22, -2004($8)
sw $22, -2008($8)
sw $22, -2012($8)
sw $22, -2528($8) #abertura
sw $22, -2524($8)
sw $22, -2520($8)
sw $22, -2516($8)
sw $22, -2512($8) #comeÃƒÆ’Ã‚Â§o abertura

#detalhe lateral direito
sw $16, -2508($8)
sw $16, -2504($8)
sw $16, -3020($8)
sw $16, -3532($8)
sw $16, -4044($8)
sw $16, -4556($8)
sw $16, -5068($8)
sw $16, -5580($8)
sw $16, -3016($8)
sw $16, -3528($8)
sw $16, -4040($8)
sw $16, -4552($8)
sw $16, -5064($8)
sw $16, -5576($8)
sw $16, -6092($8)
sw $16, -6604($8)
sw $16, -7116($8)
sw $16, -7628($8)
sw $16, -8140($8)
sw $16, -8652($8)
sw $16, -6088($8)
sw $16, -6600($8)
sw $16, -7112($8)
sw $16, -7624($8)
sw $16, -8136($8)
sw $16, -8648($8)
sw $16, -9164($8)
sw $16, -9676($8)
sw $16, -10188($8)
sw $16, -10700($8)
sw $16, -9160($8)
sw $16, -9672($8)
sw $16, -10184($8)
sw $16, -10696($8)
#detalhe lateral esquerdo
sw $16, -2536($8)
sw $16, -2532($8)
sw $16, -3048($8)
sw $16, -3560($8)
sw $16, -4072($8)
sw $16, -4584($8)
sw $16, -5096($8)
sw $16, -5608($8)
sw $16, -3044($8)
sw $16, -3556($8)
sw $16, -4068($8)
sw $16, -4580($8)
sw $16, -5092($8)
sw $16, -5604($8)
sw $16, -6120($8)
sw $16, -6632($8)
sw $16, -7144($8)
sw $16, -7656($8)
sw $16, -8168($8)
sw $16, -8680($8)
sw $16, -6116($8)
sw $16, -6628($8)
sw $16, -7140($8)
sw $16, -7652($8)
sw $16, -8164($8)
sw $16, -8676($8)
sw $16, -9192($8)
sw $16, -9704($8)
sw $16, -10216($8)
sw $16, -10728($8)
sw $16, -9188($8)
sw $16, -9700($8)
sw $16, -10212($8)
sw $16, -10724($8)

#braco esq superior - diferenca 4096
sw $16, -10732($8)
sw $16, -10220($8)
sw $16, -10224($8)
sw $16, -9712($8)

sw $16, -9716($8)
sw $16, -9204($8)

sw $16, -9208($8)


sw $16, -8696($8)
sw $15, -8692($8)
#braco esq inferior
sw $16, -6636($8)
sw $16, -6124($8)
sw $16, -6128($8)
sw $16, -5616($8)
sw $16, -5620($8)
sw $16, -5108($8)
sw $16, -5112($8)
sw $16, -4600($8)
sw $15, -4596($8)

#braÃƒÂ§o superior direito
sw $16, -10692($8)
sw $16, -10180($8)
sw $16, -10176($8)
sw $16, -9664($8)

sw $16, -9660($8)#97160
sw $16, -9148($8)#97160
sw $16, -9144($8)#97160
sw $15, -8636($8)#97160
sw $16, -8632($8)#97160
#braco inferior direito
sw $16, -6596($8)
sw $16, -6084($8)
sw $16, -6080($8)
sw $16, -5568($8)
sw $16, -5564($8)
sw $16, -5052($8)
sw $16, -5048($8)
sw $15, -4540($8)
sw $16, -4536($8)

#cauda

#primeira linha
sw $17, -2500($8)
sw $17, -2496($8)
#2 linha
sw $17, -3012($8)
sw $17, -3008($8)
sw $17, -3004($8)
#3 linha
sw $17, -3520($8)
sw $17, -3516($8)
sw $17, -3512($8)
#4 linha
sw $17, -4028($8)
sw $17, -4024($8)
sw $17, -4020($8)
#5 linha - 1 linha da pata
sw $17, -4532($8)



################
sw $22, -3040($8)  
sw $22, -3036($8)  
sw $22, -3032($8) 
sw $22, -3028($8)  
sw $22, -3024($8) 

sw $22, -3552($8)
sw $22, -3548($8)
sw $22, -3544($8)
sw $22, -3540($8)
sw $22, -3536($8)

sw $22, -4064($8)
sw $22, -4060($8)
sw $22, -4056($8)
sw $22, -4052($8)
sw $22, -4048($8)

sw $22, -4576($8)
sw $22, -4572($8)
sw $22, -4568($8)
sw $22, -4564($8)
sw $22, -4560($8)

sw $22, -5088($8)
sw $22, -5084($8)
sw $22, -5080($8)
sw $22, -5076($8)
sw $22, -5072($8)

sw $22, -5600($8)
sw $22, -5596($8)
sw $22, -5592($8)
sw $22, -5588($8)
sw $22, -5584($8)

sw $22, -6112($8)
sw $22, -6108($8)
sw $22, -6104($8)
sw $22, -6100($8)
sw $22, -6096($8)

sw $22, -6624($8)
sw $22, -6620($8)
sw $22, -6616($8)
sw $22, -6612($8)
sw $22, -6608($8)
	
sw $22, -7136($8)
sw $22, -7132($8)
sw $22, -7128($8)
sw $22, -7124($8)
sw $22, -7120($8)




sw $22, -7648($8)
sw $22, -7644($8)
sw $22, -7640($8)
sw $22, -7636($8)
sw $22, -7632($8)
	
sw $22, -8160($8)
sw $22, -8156($8)
sw $22, -8152($8)
sw $22, -8148($8)
sw $22, -8144($8)
	
sw $22, -8672($8)
sw $22, -8668($8)
sw $22, -8664($8)
sw $22, -8660($8)
sw $22, -8656($8)
	
sw $22, -9184($8)
sw $22, -9180($8)
sw $22, -9176($8)
sw $22, -9172($8)
sw $22, -9168($8)

sw $22, -9696($8)
sw $22, -9692($8)
sw $22, -9688($8)
sw $22, -9684($8)
sw $22, -9680($8)

sw $22, -10208($8)
sw $22, -10204($8)
sw $22, -10200($8)
sw $22, -10196($8)
sw $22, -10192($8)

sw $22, -10720($8)
sw $22, -10716($8)
sw $22, -10712($8)
sw $22, -10708($8)
sw $22, -10704($8)

sw $22, -11232($8)
sw $22, -11228($8)
sw $22, -11224($8)
sw $22, -11220($8)
sw $22, -11216($8)

sw $22, -11744($8)
sw $22, -11740($8)
sw $22, -11736($8)
sw $22, -11732($8)
sw $22, -11728($8)

#cabeÃƒÆ’Ã‚Â§a
sw $22, -11748($8)
sw $22, -11724($8)
#sorriso e em volta
sw $24, -12788($8)
sw $23, -12784($8)
sw $24, -12780($8)
sw $24, -12272($8)
sw $23, -12268($8)
sw $23, -12264($8)
sw $23, -12260($8)
sw $23, -12256($8)
sw $23, -12252($8)
sw $23, -12248($8)
sw $23, -12244($8)
sw $23, -12240($8)
sw $23, -12236($8)
sw $23, -12232($8)
sw $23, -12228($8)
sw $24, -12224($8)
sw $24, -12740($8)
sw $23, -12736($8)
sw $24, -12732($8)


#continuaÃƒÆ’Ã‚Â§ÃƒÆ’Ã‚Â£o rosto

sw $24, -12780($8)
sw $24, -12776($8)
sw $24, -12772($8)
sw $24, -12768($8)
sw $24, -12764($8)
sw $24, -12760($8)
sw $24, -12756($8)
sw $24, -12752($8)
sw $24, -12748($8)
sw $24, -12744($8)


sw $24, -13300($8)
sw $24, -13296($8)
sw $24, -13292($8)
sw $24, -13288($8)
sw $24, -13284($8)
sw $24, -13280($8)
sw $24, -13276($8)
sw $24, -13272($8)
sw $24, -13268($8)
sw $24, -13264($8)
sw $24, -13260($8)
sw $24, -13256($8)
sw $24, -13252($8)
sw $24, -13248($8)
sw $24, -13244($8)


sw $24, -13808($8)
sw $24, -13804($8)
sw $24, -13800($8)
sw $24, -13796($8)
sw $24, -13792($8)
sw $24, -13788($8)
sw $24, -13784($8)
sw $24, -13780($8)
sw $24, -13776($8)
sw $24, -13772($8)
sw $24, -13768($8)
sw $24, -13764($8)
sw $24, -13760($8)

#regiao palpebra
sw $24, -14320($8) 
sw $24, -14316($8) 
sw $22, -14312($8)
sw $22, -14308($8)
sw $22, -14304($8)
sw $24, -14300($8)
sw $24, -14296($8)
sw $24, -14292($8)
sw $22, -14288($8)
sw $22, -14284($8)
sw $22, -14280($8)
sw $24, -14276($8)
sw $24, -14272($8)
#olho esq
sw $24, -14832($8)
sw $24, -14828($8)
sw $23, -14824($8)
sw $23, -14820($8)
sw $23, -14816($8)
sw $24, -14812($8)
sw $24, -14808($8)
sw $24, -14804($8)
sw $23, -14800($8)
sw $23, -14796($8)
sw $23, -14792($8)
sw $24, -14788($8)
#palpebra superior
sw $24, -15340($8)
sw $22, -15336($8)
sw $22, -15332($8)
sw $22, -15328($8)
sw $24, -15324($8)
sw $24, -15320($8)
sw $24, -15316($8)
sw $22, -15312($8)
sw $22, -15308($8)
sw $22, -15304($8)
sw $24, -15300($8)

#antes da antena
sw $24, -15848($8)
sw $24, -15844($8)
sw $24, -15840($8)
sw $24, -15836($8)
sw $24, -15832($8)
sw $24, -15828($8)
sw $24, -15824($8)
sw $24, -15820($8)
sw $24, -15816($8)

sw $24, -16356($8) #1
sw $24, -16352($8)#2
sw $24, -16348($8)#3
sw $24, -16344($8)#4
sw $24, -16340($8)#5
sw $24, -16336($8)#6
sw $24, -16332($8)#7

#antena esquerda
sw $16, -16860($8)#3
sw $16, -17376($8)#3
sw $16, -17380($8)#3
sw $14, -17384($8)#3
sw $14, -17388($8)#3

#antena central
sw $22, -16856($8)#4
sw $22, -17368($8) #4
sw $22, -17880($8) #4
sw $22, -18392($8) #4
sw $14, -18904($8) #4
sw $14, -19416($8) #4
#antena direita
sw $15, -16852($8)#5
sw $15, -17360($8)#5
sw $15, -17868($8)#5
sw $14, -18376($8)#5
sw $14, -18884($8)#5

    addi $sp, $sp, 4
    lw $24, 0($sp)
    addi $sp, $sp, 4
    lw $23, 0($sp)
    addi $sp, $sp, 4
    lw $22, 0($sp)
    addi $sp, $sp, 4
    lw $17, 0($sp)
    addi $sp, $sp, 4
    lw $16, 0($sp)
    addi $sp, $sp, 4
    lw $15, 0($sp)
    addi $sp, $sp, 4
    lw $14, 0($sp)
    addi $sp, $sp, 4
    lw $31, 0($sp)
    addi $sp, $sp, 4
    
jr $31

forRestaurar:
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
	sw $23, 0($sp) #stack point 29 - salva o reg 23 na pilha
	addi $sp, $sp, -4
	
#Essas instruÃ§Ãµes salvam os registradores 8, 9, 10, 11, 12, 13, 14, 15, 21 e 31 na pilha. O ponteiro da pilha ($sp) Ã© decrementado para armazenar cada registrador.
	
	lui $8, 0x1001
	add $8, $8, $4 #$4 canto inferior esq do npc # Adiciona o valor de $4 a $8 para definir a posiÃ§Ã£o inicial
	
	lui $9 0x1001 #copia
	add $9, $9, $4 # Adiciona o valor de $4 a $9 para definir a posiÃ§Ã£o inicial da cÃ³pia
	addi $9, $9, 32768# Adiciona um offset de 32768 a $9
	
	addi $10, $0, 40 #linhas a serem copiadas
	addi $11, $0, 0 #contador das linhas - pra cima 
	addi $12, $0, 21 #numero de pixels para copiar em cada linha
	addi $13, $0, 0 #contador de pixels - para o lado
	
forColuna: #percorre as linhas, copiando colunas de pixels de uma regiÃ£o de memÃ³ria para outra.

	beq $11, $10, retornoRest # Se $11 (contador de linhas) alcanÃ§ar $10, sai do loop
	
	add $14, $0, $8 # Guarda o endereÃ§o inicial de $8 em $14
	add $15, $0, $9 # Guarda o endereÃ§o inicial de $9 em $15
	forLinha:  #percorre os pixels em cada linha, copiando-os de um endereÃ§o para outro.
	beq $12, $13, prxColuna  # Se $13 (contador de pixels) alcanÃ§ar $12, vai para a prÃ³xima coluna
	lw $21, 0($9) # Carrega o pixel do endereÃ§o $9 para $21
	
	sw $21, 0($8) # Armazena o pixel do $21 no endereÃ§o $8
	
	addi $8, $8, 4 #AvanÃ§a para o prÃ³ximo pixel em $8
	addi $9, $9, 4 #AvanÃ§a para o prÃ³ximo pixel em $9 (copia)
	
	addi $13, $13, 1 # Incrementa o contador de pixels
	
	j forLinha
	
prxColuna: #Ajusta os endereÃ§os para a prÃ³xima linha e reseta o contador de pixels
	addi $13, $0, 0 # Reseta o contador de pixels
	addi $9, $15, -512 # Ajusta o endereÃ§o de $9 para a prÃ³xima linha
	addi $8, $14, -512 # Ajusta o endereÃ§o de $8 para a prÃ³xima linha
	addi $11, $11, 1 #Incrementa o contador de linhas
	
	j forColuna
retornoRest: #Essas instruÃ§Ãµes restauram os registradores da pilha e retornam ao endereÃ§o salvo em $31.
	
	add $sp, $sp, 4
	lw $23, 0($sp)
	
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

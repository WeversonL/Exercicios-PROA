programa
{	

	real provas[2], media
	inteiro contador2 = 0
	funcao inicio()
	{
		para (inteiro contador = 1; contador <= 2; contador++)
		{
			escreva("Informe sua "+contador+"° nota: ")
			leia(provas[contador2])
			contador2++
		}

		mediaFunc()
			
	}
	
	funcao mediaFunc()
	{
		media = (provas[0] + provas[1]) / 2

		se (media >= 7) 
		{
			escreva("\nAprovado! Sua média foi de: " + media + "\n")
		}

		senao
		{
			escreva("\nReprovado! Sua média foi de: " + media + "\n")
		}
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
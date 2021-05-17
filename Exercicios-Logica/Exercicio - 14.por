programa
{	

	real provas[4], media
	inteiro contador2 = 0
	funcao inicio()
	{
		para (inteiro contador = 1; contador <= 4; contador++)
		{
			escreva("Nota da "+contador+"° prova: ")
			leia(provas[contador2])
			contador2++
		}

		mediaFunc()
			
	}
	
	funcao mediaFunc()
	{
		media = (provas[0] + provas[1] + provas[2] + provas[3]) / 4
		escreva("\nSua média foi: " + media + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
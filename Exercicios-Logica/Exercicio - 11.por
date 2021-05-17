programa
{
	real num[10], media
	inteiro contador_variavel = 0
	
	funcao inicio()
	{
		para (inteiro contador = 1; contador <=10; contador++)
		{
			escreva("Informe o "+contador+"° valor: ")
			leia(num[contador_variavel])
			contador_variavel++
		}

		funcao_media()
		
	}

	funcao funcao_media()
	{
		media = (num[0] + num[1] + num[2] + num[3] + num[4] + num[5] + num[6] + num[7] + num[8] + num[9]) / 10
		escreva(media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
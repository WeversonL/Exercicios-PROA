programa
{
	
inteiro num, fim
	
	funcao inicio()
	{
		escreva("Informe o número de início: ")
		leia(num)
		escreva("\nInforme o número final: ")
		leia(fim)

		para (inteiro contador = num; contador >= fim; contador--)
		{
			escreva(contador + ", ")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
programa
{	

	inteiro numero
	
	funcao inicio()
	{
		escreva("Escreva o número que deseja obter a tabuada: ")
		leia(numero)

		para (inteiro contador = 0; contador <= 10; contador ++)
		{
			inteiro resultado = numero * contador
			escreva(numero + " x " + contador + " = " + resultado + "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 299; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
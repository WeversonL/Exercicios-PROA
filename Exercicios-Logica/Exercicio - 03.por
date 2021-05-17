programa
{

	inclua biblioteca Matematica --> mat
	
	real num[3], numMaior
	inteiro contador = 0
	funcao inicio()
	{
		para (inteiro cont = 1; cont <=3; cont++)
		{
			escreva("Escreva o "+cont+"° valor: ")
			leia(num[contador])
			contador++
		}

		numMaior = mat.maior_numero(num[0], num[1])
		numMaior = mat.maior_numero(numMaior, num[2])

		escreva("\nO maior número listado foi: " + numMaior + "\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
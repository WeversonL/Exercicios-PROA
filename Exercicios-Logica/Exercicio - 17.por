programa
{
	inclua biblioteca Matematica --> mat
	real altura, peso, imc
	
	funcao inicio()
	{
		escreva("Informe sua altura: ")
		leia(altura)
		escreva("Informe seu peso: ")
		leia(peso)

		imc = mat.arredondar(peso / (altura * altura), 2)

		escreva("\nSeu IMC é: " + imc + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 262; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
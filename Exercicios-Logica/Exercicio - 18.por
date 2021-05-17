programa
{

	real valor, margem, venda
	
	funcao inicio()
	{
		escreva("Valor do produto: ")
		leia(valor)
		escreva("Margem de aumento: ")
		leia(margem)

		venda = ((valor / 100) * margem) + valor

		escreva("\nO preço final do produto é: R$ " + venda + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
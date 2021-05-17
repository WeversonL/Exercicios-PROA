programa
{
	real num1, num2
	inteiro menu
	logico loop = verdadeiro

	funcao inicio()
	{

		enquanto (loop == verdadeiro)
	{
		escreva("\n------------------\n1 - Soma\n------------------\n2 - Subtração\n------------------\n3 - Multiplicação\n------------------\n4 - Divisão\n------------------\n5 - Sair\n------------------\n\nSua opção: ")
		leia(menu)
		
		escolha (menu)
		{
			caso 1:
				menu2()
				soma()
				pare
			caso 2:
				menu2()
				subtracao()
				pare
			caso 3:
				menu2()
				multiplicacao()
				pare
			caso 4:
				menu2()
				divisao()
				pare
			caso 5:
				loop = falso
				pare
		}
	}
		
	}

	// FUNÇÕES ALTERNATIVAS

	funcao menu2()
	{
		limpa()
		escreva("\nDigite o 1° valor: ")
		leia(num1)
		escreva("\nDigite o 2° valor: ")
		leia(num2)
	}

	funcao soma()
	{
		escreva("\nO resultado é: " + (num1 + num2) + "\n")
	}
	funcao subtracao()
	{
		escreva("\nO resultado é: " + (num1 - num2) + "\n")
	}
	funcao multiplicacao()
	{
		escreva("\nO resultado é: " + (num1 * num2) + "\n")
	}
	funcao divisao()
	{
		escreva("\nO resultado é: " + (num1 / num2) + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
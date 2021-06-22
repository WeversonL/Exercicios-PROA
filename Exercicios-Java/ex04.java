import java.util.*;
import java.text.DecimalFormat;
public class ex04 {
    public static void main (String[] args){
        Scanner read = new Scanner(System.in);
        DecimalFormat formatador = new DecimalFormat("0.00");
        int opcao;
        double val1, val2;
        while (true){

            System.out.println("\n\n-----------------\n1 - Somar\n2 - Subtrair\n3 - Multiplicar\n4 - Dividir\n5 - Sair\n-----------------\n");
    
            opcao = read.nextInt();

            System.out.println("\nDigite o 1° valor: ");

            val1 = read.nextDouble();

            System.out.println("\nDigite o 1° valor: ");

            val2 = read.nextDouble();

            if (opcao == 1){
                System.out.printf("\nA soma é igual a: " + formatador.format(soma(val1, val2)));
            }

            else if (opcao == 2){
                System.out.printf("\nA subtração é igual a: " + formatador.format(sub(val1, val2)));
            }

            else if (opcao == 3){
                System.out.printf("\nA multiplicação é igual a: " + formatador.format(mult(val1, val2)));
            }

            else if (opcao == 4){
                System.out.printf("\nA divisão é igual a: " + formatador.format(div(val1, val2)));
            }

            else if (opcao == 5){
                break;
            }
        }
        read.close();
    }

    public static double soma(double primeiro, double segundo){

        double valor1 = primeiro, valor2 = segundo, resultado = 0;
    
        resultado = valor1 + valor2;

        return resultado;
    
    }

    public static double sub(double primeiro, double segundo){

        double valor1 = primeiro, valor2 = segundo, resultado = 0;
    
        resultado = valor1 - valor2;

        return resultado;
    
    }

    public static double mult(double primeiro, double segundo){

        double valor1 = primeiro, valor2 = segundo, resultado = 0;
    
        resultado = valor1 * valor2;

        return resultado;
    
    }

    public static double div(double primeiro, double segundo){


        double valor1 = primeiro, valor2 = segundo, resultado = 0;
    
        resultado = valor1 / valor2;

        return resultado;
    
    }
    
}




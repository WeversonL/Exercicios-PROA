import java.util.*;
public class ex07 {
    public static void main (String[] args){
        Scanner read = new Scanner(System.in);
        int soma_menores = 0, soma_maiores = 0, soma_total = 0;
        int[] val = new int[10];

        for(int i = 1; i < val.length+1; i++){
            System.out.printf("Digite o %d° valor: ",i);
            val[i - 1] = read.nextInt();
        }

        for (int i = 0; i < val.length; i++) { 
            if (val[i] < 40){
                soma_menores += val[i];
            } 
            else if (val[i] > 40){
                soma_maiores += val[i];
            }
        }

        soma_total = soma_maiores + soma_menores;

        System.out.printf("\n-----------------------------------\nA soma total dos números é: %d\nA soma dos menores números é: %d\nA soma dos maiores números é: %d\n-----------------------------------\n",soma_total, soma_menores, soma_maiores);

        read.close();
    }
}

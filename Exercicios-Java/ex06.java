import java.util.*;
public class ex06 {
    public static void main (String[] args){

        Scanner read = new Scanner(System.in);
        int soma_total = 0;
        int[] val = new int[10];

        for(int i = 1; i < val.length+1; i++){
            System.out.printf("Digite o %d° valor: ",i);
            val[i - 1] = read.nextInt();
        }

        for (int i = 0; i < val.length; i++) {  
           soma_total += val[i]; 
        }

        System.out.printf("\n-----------------------------------\nA soma total é: %d\n-----------------------------------\n",soma_total);

        read.close();
    }
}

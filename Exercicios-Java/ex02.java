import java.util.Scanner;
public class ex02 {
    public static void main (String[] args){
        Scanner read = new Scanner(System.in);

        int[] val = new int[3];

        for(int i = 1; i < val.length+1; i++){
            System.out.printf("Digite o %d° valor: ",i);
            val[i - 1] = read.nextInt();
        }

        int maior = Integer.MIN_VALUE;

        for (int i = 0; i < val.length; i++) {
            if (val[i] > maior) {
                maior = val[i];
            }
        }

        System.out.printf("Maior número informado é %d",maior);

        read.close();

    }

}

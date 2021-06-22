import java.util.*;
public class ex05 {
    public static void main(String[] args){
        
        Scanner read = new Scanner(System.in);
        double valor_informado = 0;
        boolean res = true;

        System.out.println("Informe um valor: ");
        valor_informado = read.nextDouble();

        if (valor_informado > 0){
            res = true;
        }

        else if (valor_informado < 0){
            res = false;
        }

        else{
            System.out.println("Informe um valor válido\n");
        }

        System.out.printf("O número informado é positivo? " + res);

        read.close();
    }
}

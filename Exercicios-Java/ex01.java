import java.util.Scanner;
public class ex01 {
    public static void main (String[] args){
        Scanner read = new Scanner(System.in);
        double val = 0;
        System.out.println("Informe um valor: ");
        val = read.nextDouble();
        
        if(val > 0){
            System.out.println("Número positivo");
        }
        else{
            System.out.println("Número negativo");
        }
        read.close();
  }
}

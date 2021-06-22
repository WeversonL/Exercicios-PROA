package banco;
import java.text.DecimalFormat;
import banco.*;
public class Banco{
    
    private double saldo;

    DecimalFormat formatador = new DecimalFormat("0.00");

    public double alterar_saldo(double novo){

        if (novo <= 0){

            System.out.println("\nO valor adicionado não pode ser 0 ou menor que isso!!!");
            return 0;

        }

        else{

            saldo += novo;
            System.out.printf("\nSeu saldo atual é de: R$ " + formatador.format(saldo));
            return 0;

        }
    
    }

    public double saque(double saque){

        if (saque <= 0){

            System.out.println("\nO valor de saque não pode ser 0 ou menor que isso!!!");
            return 0;

        }

        else{

            if (saque > saldo){
                System.out.println("\nSua conta não tem saldo suficiente!!!\n\nSaldo atual: R$" + formatador.format(saldo));
                return 0;
            }

            else{
                saldo -= saque;
                System.out.printf("\nRetire aqui seu saque de " + formatador.format(saque) + "\n\nSeu saldo atual é de: R$ " + formatador.format(saldo));
                return 0;
            }

        }
    
    }


    public void extrato(){
        System.out.println("\nSeu saldo atual é de: R$ " + formatador.format(saldo));
    }

}

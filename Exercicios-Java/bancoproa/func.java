package bancoproa;
import java.text.DecimalFormat;
public class func{

    DecimalFormat dc = new DecimalFormat("0.00");

    private String nome_titular = "", agencia = "", data_abertura = "";
    
    private int num_conta = 0;

    private double saldo = 40000;

    public void deposito(double valor){

        if (valor <= 0){

            System.out.println("\nO valor adicionado não pode ser 0 ou menor que isso!!!");

        }

        else{

            saldo += valor;
            System.out.printf("\nSeu saldo atual é de: R$%s\n",dc.format(saldo));

        }
    
    }

    public void saque(double valor){

        if (valor <= 0){

            System.out.println("\nO valor de valor não pode ser 0 ou menor que isso!!!\n");

        }

        else{

            if (valor > saldo){

                System.out.printf("\nSua conta não tem saldo suficiente!!!\n\nSaldo atual: R$ %s", dc.format(saldo));

            }

            else{
                saldo -= valor;
                System.out.printf("\nRetire aqui seus: R$%s\n\nSeu saldo atual é de: R$%s\n\n", dc.format(valor), dc.format(saldo));

            }

        }
    
    }

    public void calculaRendimento(double juros, int meses){

        double rendimento = saldo * (1 + juros) / meses;

        System.out.println("\nSeu rendimento em " +meses+ " meses, aplicando "+juros+"% de juros, foi de: R$"+dc.format(rendimento));

    }


    public void extrato(){
        System.out.printf("\nSeu saldo atual é de: R$%s\n\n", dc.format(saldo));
    }

    public void informacoes(){

        this.nome_titular = "Weverson";
        this.agencia = "0224";
        this.data_abertura = "22/01/2014";
        this.num_conta = 15756742;

        System.out.printf("Nome do titular: %s\nAgência: %s\nNúmero da conta: %d\nData de abertura: %s\n\n\n", this.nome_titular, this.agencia, this.num_conta, this.data_abertura);
        
    }

}
package banco;
import java.util.*;
import banco.*;
import java.util.concurrent.TimeUnit;
public class Caixa {
    public static void main(String[] args) throws InterruptedException{

        Scanner read = new Scanner(System.in);

        Banco bc = new Banco();

        validacao vl = new validacao();

        limpa clean = new limpa();

        int tent = 1;

        while (tent < 4){

            System.out.println("Informe seu nome de usuário: ");

            String username = read.nextLine();

            System.out.println("Informe sua senha: ");

            String password = read.nextLine();

            boolean consult = vl.validator(username, password);

            if (consult == true){

                System.out.printf("\n\nSeja bem vindo, %s\n\n",username);

                while(true){
                    System.out.println("\nQua operação deseja realizar?\n\n1 - Deposito\n2 - Saque\n3 - Extrato\n");
        
                    int opc = read.nextInt();
                    
                    if (opc == 1){
                        System.out.println("\nQual valor deseja inserir?\n");
        
                        double saldo = read.nextDouble();
        
                        bc.alterar_saldo(saldo);
        
                    }
        
                    else if (opc == 2){
                        System.out.println("\nQual valor deseja retirar?\n");
        
                        double saque = read.nextDouble();
        
                        bc.saque(saque);
                    }
                    
                    else if (opc == 3){
                        bc.extrato(); 
                    }
        
                    else{
                        System.out.println("Selecione uma opção válida!!!");
                    }
                }
            }

            else{
                clean.cls();
                System.out.println("Credenciais inválidas!!!");
                TimeUnit.SECONDS.sleep(2);
                clean.cls();
                tent++;
            }
        }
        
        read.close();

    }
}

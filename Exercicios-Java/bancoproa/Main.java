package bancoproa;
import java.util.*;
import bancoproa.*;
import java.util.concurrent.TimeUnit;
public class Main {
    public static void main(String[] args) throws InterruptedException {
        Scanner read = new Scanner(System.in);

        func fc = new func();

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

                clean.cls();

                System.out.printf("Seja bem vindo, %s\n\n",username);

                while(true){
                    System.out.println("\nQua operação deseja realizar?\n\n1 - Deposito\n2 - Saque\n3 - Extrato\n4 - Calculo de Rendimento\n5 - Informações da conta\n0 - Sair");
        
                    int opc = read.nextInt();
                    
                    if (opc == 1){

                        clean.cls();

                        System.out.println("\nQual valor deseja inserir?\n");
        
                        double saldo = read.nextDouble();
        
                        fc.deposito(saldo);
        
                    }
        
                    else if (opc == 2){

                        clean.cls();

                        System.out.println("\nQual valor deseja retirar?\n");
        
                        double saque = read.nextDouble();
        
                        fc.saque(saque);
                    }
                    
                    else if (opc == 3){
                        clean.cls();
                        fc.extrato(); 
                    }

                    else if (opc == 4){

                        clean.cls();
                        
                        System.out.println("Para calcular seu rendimento, informe a quantidade de meses que você manteve seu saldo no banco: ");

                        int meses = read.nextInt();

                        System.out.println("\nAgora, informe a taxa de juros aplicada: ");

                        double juros = read.nextDouble();

                        fc.calculaRendimento(juros, meses);
                    }

                    else if (opc == 5){
                        clean.cls();
                        fc.informacoes();
                    }

                    else if (opc == 0){
                        break;
                    }
        
                    else{
                        clean.cls();
                        System.out.println("Selecione uma opção válida!!!");
                        TimeUnit.SECONDS.sleep(2);
                        clean.cls();
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

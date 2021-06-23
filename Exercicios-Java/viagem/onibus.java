package viagem;
import java.util.*;
import viagem.*;
public class onibus {
    public static void main(String[] args) {

        Metods mtds = new Metods();

        Scanner read = new Scanner(System.in);

        limpa clear = new limpa();

        System.out.println("Qual seu nome? ");

        String nome = read.nextLine();
        

        while(true){

            System.out.printf("Aqui é o painel de controle do ônibus, bem vindo, %s! O que deseja fazer:\n\n1 - Inserir um passageiro\n2 - Tirar um passageiro\n3 - Realizar parada\n4 - Iniciar viagem\n5 - Parar o ônibus\n\n",nome);

            int opc = read.nextInt();

            if(opc == 1){

                clear.cls();

                System.out.println("Quantos passageiros deseja inserir? ");
                int qntd = read.nextInt();

                mtds.quantiaEntrada(qntd);
            }

            else if(opc == 2){

                clear.cls();

                System.out.println("Quantos passageiros deseja retirar? ");
                int qntd_rm = read.nextInt();

                mtds.pessoasSaindo(qntd_rm);
            }

            else if(opc == 3){
                clear.cls();
                mtds.paradas();
            }

            else if(opc == 4){
                clear.cls();
                mtds.anda();
            }

            else if(opc == 5){
                clear.cls();
                mtds.para();
            }

            else{
                clear.cls();
                System.out.println("Digita certo ai");
            }

        }

    }
}

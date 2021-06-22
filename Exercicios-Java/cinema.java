import java.util.*;
import java.util.concurrent.TimeUnit;
public class cinema {
    public static void main(String[] args) throws InterruptedException{

        Scanner read = new Scanner(System.in);
        read.useLocale(Locale.ROOT);

        // Controle do cinema

        String filmes[] = {"As branquelas", "A chegada"};

        String salas[] = {"Sala alpha","Sala beta"};

        String fileiras[] = {"A, B, C, D, E, F", "A, B, C, D, E"};

        int assentos_sala1[] = new int[153];

        for (int i = 0; i < assentos_sala1.length; i++){
            assentos_sala1[i] = i;
        }

        int assentos_sala2[] = new int[127];

        for (int i = 0; i < assentos_sala2.length; i++){
            assentos_sala2[i] = i;
        }

        int assentos_def1 = 12, assentos_def2 = 6;

        int fileiras_sala1 = 6, fileiras_sala2 = 5;

        // Opções do usuario

        String fill = "";

        int assen = 0;

        System.out.printf("Bem vindo ao cinema LAS VEGAS! Nossas opções para hoje são:\n\n1 - %s\n2 - %s\n\nQual sua opção? ", filmes[0], filmes[1]);

        int opcao = read.nextInt();

        if (opcao == 1){

            while(true){

                cls();

                System.out.printf("\nVocê escolheu assistir '%s'\n\nA sala para o filme selecionado é: '%s'\n\nPossuímos %d fileiras de poltronas, cada fileira contendo %d assentos, escolhe a fileira que deseja e o número da sua poltrona! \n--- Lembre-se, %d dos assentos são para pessoas portadoras de deficiência ---",filmes[0], salas[0], fileiras_sala1, ((assentos_sala1.length-1)/fileiras_sala1),assentos_def1);

                System.out.printf("\n\nOpções de fileiras: (%s)\n\n-----------------------\nSelecione sua opção: \n-----------------------\n",fileiras[0]);

                fill = read.next();

                if (fill.equals("a") || fill.equals("A") || fill.equals("b") || fill.equals("B") || fill.equals("c") || fill.equals("C") || fill.equals("d") || fill.equals("D") || fill.equals("e") || fill.equals("E") || fill.equals("f") || fill.equals("F")){

                    System.out.printf("\n--- Lembre-se, %d dos assentos são para pessoas portadoras de deficiência ---\nAgora selecione o número de assentos de 0 à %d: \n\n-----------------------\nSelecione sua opção: \n-----------------------\n",assentos_def1,(assentos_sala1.length-1));

                    assen = read.nextInt();

                    if (assen > assentos_sala1.length){
                        cls(); 
                        System.out.println("\nInforme um assento válido!\n");
                        TimeUnit.SECONDS.sleep(2);  
                    }

                    else if (assentos_sala1[assen] == 0){
                        cls();
                        System.out.println("\nInfelizmente este assento está ocupado, por favor selecione outro!");
                        TimeUnit.SECONDS.sleep(2);
                    }

                    else{
                        System.out.printf("\nSua escolha foi: \n\nFileira: %s - Assento: %d\n\n", fill, assen);
                        assentos_sala1[assen] = 0;
                        break;
                    }
                }

                else{
                    cls();                 
                    System.out.println("\nSelecione uma fileira válida conforme foi informado!");
                    TimeUnit.SECONDS.sleep(2);
                }
            }
        }

        else if (opcao == 2){

            while(true){

                cls();

                System.out.printf("\nVocê escolheu assistir '%s'\n\nA sala para o filme selecionado é: '%s'\n\nPossuímos %d fileiras de poltronas, cada fileira contendo %d assentos, escolhe a fileira que deseja e o número da sua poltrona!\n--- Lembre-se, %d dos assentos são para pessoas portadoras de deficiência ---",filmes[1], salas[1], fileiras_sala2, ((assentos_sala2.length-1)/fileiras_sala2),assentos_def2);

                System.out.printf("\n\nOpções de fileiras: (%s)\n\n-----------------------\nSelecione sua opção: \n-----------------------\n",fileiras[1]);

                fill = read.next();

                if (fill.equals("a") || fill.equals("A") || fill.equals("b") || fill.equals("B") || fill.equals("c") || fill.equals("C") || fill.equals("d") || fill.equals("D") || fill.equals("e") || fill.equals("E")){

                    System.out.printf("\n--- Lembre-se, %d dos assentos são para pessoas portadoras de deficiência ---\nAgora selecione o número de assentos de 0 à %d: \n\n-----------------------\nSelecione sua opção: \n-----------------------\n",assentos_def2,(assentos_sala2.length-1));

                    assen = read.nextInt();

                    if (assen > assentos_sala2.length){
                        cls();    
                        System.out.println("\nInforme um assento válido!\n");
                        TimeUnit.SECONDS.sleep(2);
                    }

                    else if(assentos_sala2[assen] == 0){

                        cls();
                        System.out.println("\nInfelizmente este assento está ocupado, por favor selecione outro!");
                        TimeUnit.SECONDS.sleep(2);
                    }

                    else{
                        System.out.printf("\nSua escolha foi: \n\nFileira: %s - Assento: %d\n\n", fill, assen);

                        assentos_sala1[assen] = 0;
                        break;
                    }

                }

                else{
                    cls();
                    System.out.println("\nSelecione uma fileira válida conforme foi informado!");
                    TimeUnit.SECONDS.sleep(2);
                }
            }
        }

        read.close();

    }

    public static void cls()
    {
        try
        {	
            new ProcessBuilder("clear").inheritIO().start().waitFor();
        }catch(Exception E){
            System.out.println(E);
        }
    }
        
}
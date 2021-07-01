package elevador;
import java.util.*;
import java.util.concurrent.TimeUnit;

import elevador.*;

public class Main {
    public static void main(String[] args) throws InterruptedException{
        
        Scanner read = new Scanner(System.in);

        func fc = new func();

        limpa clean = new limpa();

        clean.cls();

        while(true){
            System.out.println("1 - Informações\n2 - Subir\n3 - Descer\n4 - Entrou pessoa\n5 - Saiu pessoa\n0 - Sair\n");

            int opcao = read.nextInt();

            if(opcao == 1){
                clean.cls();
                fc.getInfo();
            }

            else if(opcao == 2){
                
                System.out.println("\nQuantidade de andares: \n");
                int andar = read.nextInt();
                if (fc.getAndar() > fc.getMaxAndar() || andar > fc.getMaxAndar()|| andar <= 0){
                    clean.cls();
                    System.out.printf("Você não pode subir %d andares, pois você está no %d° e o prédio possui %d andares e o térreo\n\n",andar,fc.getAndar(),fc.getMaxAndar());
                }

                else{
                    clean.cls();
                    System.out.printf("Andar atual: %d\n\n", fc.subir(andar));
                }
                
            }

            else if(opcao == 3){
                
                
                System.out.println("\nQuantidade de andares: \n");
                int andar = read.nextInt();

                if(fc.getAndar() < andar || andar <= 0){
                    clean.cls();
                    System.out.printf("Você não pode descer %d andares, pois você está no %d°\n\n",andar,fc.getAndar());
                }

                else{
                    clean.cls();
                    System.out.printf("\nAndar atual: %d\n\n", fc.descer(andar));
                }

            }

            else if(opcao == 4){
                
                System.out.println("\nQuantidade de pessoas: \n");
                int pess = read.nextInt();

                if(pess <= 0){
                    clean.cls();
                    System.out.println("\nInforme uma quantidade válida!\n\n");
                }

                else if(pess > 7){
                    clean.cls();
                    System.out.printf("\nO limite máximo são de 7 pessoas, atualmente há %d!\n\n",fc.getPessoas());
                }

                else{
                    clean.cls();
                    System.out.printf("\nQuantia de pessoas atual: %d\n\n", fc.acresPessoas(pess));
                }

            }

            else if(opcao == 5){
                
                System.out.println("\nQuantidade de pessoas: \n");
                int pess = read.nextInt();

                if(pess <= 0){
                    clean.cls();
                    System.out.println("\nInforme uma quantidade válida!\n\n");
                }

                else if(pess > fc.getPessoas()){
                    clean.cls();
                    System.out.printf("Você está tentando retirar %d, mas há %d pessoas no elevador\n\n",pess, fc.getPessoas());
                }

                else{
                    clean.cls();
                    System.out.printf("\nQuantia de pessoas atual: %d\n\n", fc.decresPessoas(pess));
                }
            }

            else if(opcao == 0){
                break;
            }

            else{
                clean.cls();
                System.out.println("\nInforme uma opção válida!\n");
            }

        }
    }
}
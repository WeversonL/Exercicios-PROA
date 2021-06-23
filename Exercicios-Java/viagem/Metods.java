package viagem;
public class Metods{

    private String local_atual;
    private int quantia_paradas, capacidade_onibus, quantia_pessoas;

    public void quantiaEntrada(int pessoas_entrou){

        if(pessoas_entrou >= 45){
            System.out.println("\nA quantidade é superior ao que o ônibus suporta!\n");
        }
        
        else if (pessoas_entrou <= 0){
            System.out.println("\nPara acrescentar ao ônibus, deve ser maior 0\n");
        }

        else{
            quantia_pessoas += pessoas_entrou;
            System.out.printf("\nA quantidade atual de pessoas no ônibus é de: %d\n", quantia_pessoas);
        }

    }

    public void pessoasSaindo(int pessoas_sairam){

        if(pessoas_sairam > quantia_pessoas){
            System.out.println("O ônibus não tem essa quantia de passageiros!");
        }
        
        else if (pessoas_sairam <= 0){
            System.out.println("\nPara diminior os passageiros do ônibus, deve ser maior 0\n");
        }

        else{
            quantia_pessoas -= pessoas_sairam;
            System.out.printf("\nA quantidade atual de pessoas no ônibus é de: %d\n", quantia_pessoas);
        }

    }

    public void paradas(){
        quantia_paradas += 1;
        System.out.printf("\nA quantidade atual de paradas é igual a: %d\n\n",quantia_paradas);
    }

    public void anda(){
        System.out.println("\nO ônibus está andando!\n");
    }

    public void para(){
        System.out.println("\nO ônibus parou!\n");
    }

}
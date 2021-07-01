package elevador;
public class func{

    private int andar_atual = 0, qtd_andares = 15, capac_elevador = 7, qtd_pessoasPres = 0;

    public int subir(int novo_andar){
        
        if (this.andar_atual >= 14){
           return this.andar_atual;
        }

        else{
            this.andar_atual += novo_andar;
            return this.andar_atual;
        }
        
        
    }

    public int descer(int novo_andar){

        if(this.andar_atual < 0){
            return this.andar_atual;
        }

        else{
            this.andar_atual -= novo_andar;
            return this.andar_atual;
        }
    }

    public int acresPessoas(int novas_pessoas){
        if(this.qtd_pessoasPres >= 7){
            return this.qtd_pessoasPres;
        }

        else{
            this.qtd_pessoasPres += novas_pessoas;
            return this.qtd_pessoasPres;
        }
        
    }

    public int decresPessoas(int novas_pessoas){
        if(this.qtd_pessoasPres <= 0){
            return this.qtd_pessoasPres;
        }

        else{
            this.qtd_pessoasPres -= novas_pessoas;
            return this.qtd_pessoasPres;
        }
        
    }

    public void getInfo(){
        System.out.printf("Quantidade de andares: %d\nCapacidade do Elevador: %d\nQuantidade de pessoas presentes: %d\nAndar atual: %d\n\n", this.qtd_andares, this.capac_elevador, this.qtd_pessoasPres, this.andar_atual);
    }

    public int getAndar(){
        return this.andar_atual;
    }

    public int getMaxAndar(){
        return this.qtd_andares;
    }

    public int getPessoas(){
        return this.qtd_pessoasPres;
    }
}
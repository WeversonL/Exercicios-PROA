package elevador;
public class limpa {

    public void cls()
    {
        try
        {	
            new ProcessBuilder("clear").inheritIO().start().waitFor();
        }catch(Exception E){
            System.out.println(E);
        }
    }
    
}
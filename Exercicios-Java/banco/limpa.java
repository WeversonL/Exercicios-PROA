package banco;
import banco.*;
public class limpa {

    public void cls()
    {
        try
        {	
            new ProcessBuilder("powershell","clear").inheritIO().start().waitFor();
        }catch(Exception E){
            System.out.println(E);
        }
    }
    
}

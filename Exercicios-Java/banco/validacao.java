package banco;
import banco.*;
public class validacao {
    
    private String username;

    private String password;

    public boolean validator(String username, String password){

        if (username.equals("WeversonL") && password.equals("22012003")){
            return true;
        }
        else{
            return false;
        }

    }

}

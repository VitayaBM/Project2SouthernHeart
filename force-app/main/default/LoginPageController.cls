public class LoginPageController {
    
    public String username {get; set;}
    public String password {get; set;}


    public pageReference loggingIn()
    {
        return Site.login(username, password, 'https://southernheart-dev-ed.lightning.force.com/lightning/page/home');
    }

    public void forgotPass()
    {
        
    }
    public void signUp()
    {
        
    }
}

public class LoginPageController {
    
    public String username {get; set;}
    public String password {get; set;}


    public pageReference loggingIn()
    {
        return Site.login(username, password, 'https://southernhearts-developer-edition.na85.force.com/vsync');
    }

    public pageReference forgotPass()
    {
        if(Site.isValidUsername(username))
        {
            Site.forgotPassword(username);
            PageReference pr = Page.ForgotPasswordConfirm;
            pr.setRedirect(true);
            return pr;
        }
        else 
        {
           return null;
        }
    }

}

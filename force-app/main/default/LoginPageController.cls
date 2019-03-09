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
           ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR, 'User not found. Please double-check the Username to make sure it is valid.'));
        }
        return null;
    }

}

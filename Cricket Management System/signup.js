function validate()
{
        var name = document.forms["userinfo"]["name"].value;
        var email = document.forms["userinfo"]["email"].value;
        var phone = document.forms["userinfo"]["phone"].value;
        var user = document.forms["userinfo"]["uname"].value;
        var pass = document.forms["userinfo"]["password"].value;
        var cpass = document.forms["userinfo"]["confirm"].value;

        if(name =="")
        {
                alert("Name Required...!!!");
                return false;
        }
        else  if(user =="")
        {
                alert("User Name Required...!!!");
                return false;
        }
        else if(phone =="")
        {
                alert("Phone Number Required...!!!");
                return false;
        }
        else if(email =="")
        {
                alert("Email Required...!!!");
                return false;
        }
        else if(pass =="")
        {
                alert("Password Required...!!!");
                return false;
        }
        else if(cpass=="")
        {
                alert("Confirm Password Required...!!!");
                return false;
        }
        else if (cpass!=pass)
        {
                alert("Write Correct Confirm Password...!!!");
                return false;
        }
}
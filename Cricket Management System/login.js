function validate()
{
    var email = document.forms["userinfo"]["email"].value;
    var password = document.forms["userinfo"]["password"].value;

    if(email == "")
    {
        alert("Please Enter Valid Email Id...!!!");
        return false;
    }
    else if(password == "")
    {
        alert("Please Enter Valid Password...!!!")
        return false;
    }
}
/**
 * 
 */

function nameValidate()
{
	var name=document.getElementById("name").value;
	var regex = /^[a-zA-Z ]{3,50}$/;
	
	if( regex.test(name))
	{
		document.getElementById("nameMsg").innerHTML="";
		return true;
		
	}
	else
	{
		document.getElementById("nameMsg").innerHTML="<span style='color:red;'>please enter valid name(name with min 3 and max 50 charecters)</span>";
		document.getElementById("name").value=null;
		return false;
		
	}
	
}


function ageValidate()
{
	var age=document.getElementById("age").value;
	if(age=="nill")
	{
		//alert(age)
		document.getElementById("ageMsg").innerHTML="<span style='color:red;'>please Choose your age</span>";
		return false;
	}
	else
	{
		//alert(age+" "+"else")
		document.getElementById("ageMsg").innerHTML="";
		return true;
	}
	
}


function ageVl()
{
	if(age != "nill")
	{
		
document.getElementById("ageMsg").innerHTML="";
		return true;
	}
		
}


function emailValidate()
{
	var email=document.getElementById("email").value;
	var regexs =/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
 if( regexs.test(email))
	{
		document.getElementById("emsg").innerHTML="";
		return true;
		
	}
	else
	{
		document.getElementById("emsg").innerHTML="<span style='color:red;'>please enter valid email</span>";
		
		document.getElementById("email").value=null;
		return false;
		
	}
	
}
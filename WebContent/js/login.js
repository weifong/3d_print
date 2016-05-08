function for_login()
{
	if(loginForm.username.value==""||loginForm.password.value=="")
	{
		window.alert("用户名或密码不能为空");
		return false;
	}
	else
		{
		return true;	
		}
		
} 
function check(flag){
	   if(flag!="null"){ //第次访问该页面时request.getAttribute("flag")定null值
	    if(flag.length==0){ 
	     window.alert("用户名或者密码错误");
	     return;
	    }
	   }
	  }
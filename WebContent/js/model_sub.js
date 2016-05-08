function onZanClick()
{
   var struserid= document.getElementById("userid").value;
  if(""==struserid)
	  {
	  window.alert("对不起，您尚未登录哦!");
	  return false;
	  }
  else
	  {
	     	return true;    
	  }
}
function onComment()
{
   var struserid= document.getElementById("userid").value;
   var strinfon = document.getElementById("comment").value;
   
   if(struserid =="")
	   {
	   window.alert("对不起，请登录后再评价哦!");
	   return false;
	   }
   else
	   {
	      if(strinfon=="")
	    	  {
	    	  window.alert("对不起，评价内容不能为空哦!")
	    	  return false;
	    	  }
	   }
   return true;
}
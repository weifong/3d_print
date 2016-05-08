function onAttention()
{  
  var struserid=document.getElementById("userid").value;
  if(struserid == "")
	  {
		  window.alert("对不起，您尚未登陆");		  
		  return false;
	  }
  else
	  {
	     attentionForm.submit();
	  }
}
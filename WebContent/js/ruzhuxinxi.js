function onRuZhu()
{
   var 	license=document.getElementById("license").value;
   var address=document.getElementById("license").value;
   var identitycard=document.getElementById("license").value;
   var agent=document.getElementById("license").value;
   var pic=document.getElementById("license").value;
   if(license == ""|| address==""|| identitycard==""|| agent=="" || pic == "")
	   {
	   alert("输入信息不完整");
	   return false;
	   }
   else
	   {
	   ruzhuForm.submit();
	   }
}
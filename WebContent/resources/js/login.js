var pwdmin = 8		//密码长度
var emailReg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/

//验证邮箱格式
$('#registerEmail').blur(function() {
  if(!$("#registerEmail").val().match(emailReg)){ 
  	layer.msg("邮箱格式不正确！");
    $("#registerEmail").focus(); 
  }
})

//验证密码长度
$('#registerPassword').blur(function() {
	if ($('#registerPassword').val().length < pwdmin) {		
		layer.msg("密码不能小于" + pwdmin + "位");
		$("#registerPassword").focus(); 
	}
});

//注册时两个密码长度应该一致
$("#registerPassword2").blur(function(){
  if ($('#registerPassword2').val() != $('#registerPassword').val()) {		
  	layer.msg("两次密码不一致！");
	}
});

//注册脚本
function register(){
	
	var email = $("#registerEmail").val();
	var password = $("#registerPassword").val();
	var password2 = $("#registerPassword2").val();
	
	console.log(email)
	
	$.ajax({
			type : "post",
			url : ctx+"/register",
			data : {
				'email' : email,
				'password' :password,
			},
			success : function(data) {
				
				if( data!=2 ){
					layer.msg('注册出错！请使用其他邮箱！')
					$("#registerEmail").focus(); 
				}else{
					location.href = ctx+"/"
				}
			},
			error : function() {
				layer.msg('请求出错，请重试！')
			}
			
		});
	return false;
}

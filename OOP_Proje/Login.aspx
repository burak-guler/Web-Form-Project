<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OOP_Proje.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  	<title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="login-form-19/css/style.css">

</head>
<body >
		<form runat="server">

		
	<section class="ftco-section" >
		<div class="container" >
			<div class="row justify-content-center" >
				<div class="col-md-6 text-center mb-5" >
					<h2 class="heading-section"></h2>
				</div>
			</div>
			<div class="row justify-content-center" >
				<div class="col-md-6 col-lg-4" >
					<div class="login-wrap py-5" >
		      	<div class="img d-flex align-items-center justify-content-center" style="background-image: url(login-form-19/images/resim.jpg);" ></div>
		      	<h3 class="text-center mb-0">HOŞGELDİNİZ</h3>
		      	<p class="text-center">Aşağıdaki bilgileri girerek sisteme giriş yapın</p>
						<form action="#" class="login-form">
		      		<div class="form-group">
		      			<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-user"></span></div>
						<asp:TextBox ID="txt_ad" runat="server" class="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
		      			
		      		</div>
	            <div class="form-group">
	            	<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-lock"></span></div>
					<asp:TextBox ID="txt_parola" runat="server" class="form-control" placeholder="Parola" TextMode="Password"></asp:TextBox>
	              
	            </div>
	            <div class="form-group d-md-flex">
								<div class="w-100 text-md-right">
									<a href="#"></a>
								</div>
	            </div>
	            <div class="form-group">
					<asp:Button ID="Button1" runat="server" Text="Giriş" class="btn form-control btn-primary rounded submit px-3" backcolor="Black" OnClick="Button1_Click"   />
	            	
	            </div>
	          </form>
	          <div class="w-100 text-center mt-4 text">
	          	<p class="mb-0"></p>
		          <a href="Register.aspx">Kullanıcı Kayıt Etmek için</a>
	          </div>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="login-form-19/js/jquery.min.js"></script>
  <script src="login-form-19/js/popper.js"></script>
  <script src="login-form-19/js/bootstrap.min.js"></script>
  <script src="login-form-19/js/main.js"></script>
			</form>
			

</body>
</html>

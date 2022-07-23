<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OOP_Proje.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="Register form/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
    
</head>
<body style="background:#f4623a;">
	<form runat="server">

	
	<!-- main -->
	<div class="main-w3layouts wrapper" >
		<h1>Kayıt Ol</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="#" method="post">
					<asp:TextBox ID="txt_kullaniciad" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox> <br />
					<asp:TextBox ID="txt_email" runat="server" placeholder="Email"></asp:TextBox> <br />
					<asp:TextBox ID="txt_parola" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox> <br />
					<asp:TextBox ID="txt_parolaonay" runat="server" placeholder="Parola Onayla" TextMode="Password"></asp:TextBox>
					<div class="wthree-text">
						
					</div>
					<asp:Button ID="Button1" runat="server" Text="Kullanıcı Kaydet" BackColor="#f4623a" OnClick="Button1_Click"   />
					
				</form>
				<p> <a href="Login.aspx"> Giriş Yap!</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
		</form>
</body>
</html>

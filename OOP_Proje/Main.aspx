<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="OOP_Proje.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>GALATA KİTABEVİ & SAHAF</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="template/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="template/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">GALATA Kİ&SA</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#about" style="color:black; border:1px solid black;">Kitap Sat</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services" style="color:black; border:1px solid black;">Kitap Ekle</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact" style="color:black; border:1px solid black;">Sorgulama</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio" style="color:black; border:1px solid black;">Görsel</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">GALATA KİTABEVİ & SAHAF</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Türkiye'nin En Büyük Kitabevİ</p>
                        <a class="btn btn-primary btn-xl" href="#about">Daha Fazlası için</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5" id="box" style="display:inline-block; "   >
                <form runat="server" >
                                <div style="float:left;" >
                                <table style="width: 50%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>2.El Kitap Satışı</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Yazar:</p></td>
                                        <td><p><asp:TextBox ID="İSyazar" runat="server" placeholder="yazar" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Tür:</p></td>
                                        <td><p>
                                            <asp:DropDownList ID="İStur" runat="server" placeholder="tür">
                                                <asp:ListItem Value="Seçiniz">Seçiniz</asp:ListItem>
                                                <asp:ListItem Value="Hikaye"></asp:ListItem>
                                                <asp:ListItem>Şiir</asp:ListItem>
                                                <asp:ListItem>Roman</asp:ListItem>
                                                <asp:ListItem Value="Anı"></asp:ListItem>
                                                <asp:ListItem Value="Tarih"></asp:ListItem>
                                                <asp:ListItem Value="Öykü"></asp:ListItem>
                                                <asp:ListItem Value="Masal"></asp:ListItem>
                                                <asp:ListItem Value="Felsefe"></asp:ListItem>
                                                <asp:ListItem Value="Biyografi"></asp:ListItem>
                                                <asp:ListItem Value="Eğitim"></asp:ListItem>
                                                <asp:ListItem Value="Çizgi Roman"></asp:ListItem>
                                                <asp:ListItem Value="Tiyatro"></asp:ListItem>
                                                <asp:ListItem Value="Bilim"></asp:ListItem>
                                                <asp:ListItem Value="Bilim Kurgu"></asp:ListItem>
                                                <asp:ListItem Value="Polisiye"></asp:ListItem>
                                            </asp:DropDownList></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Kitap adı:</p></td>
                                        <td><p><asp:TextBox ID="İSkitapad" runat="server" placeholder="kitap adı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Sayfa sayısı:</p></td>
                                        <td><p><asp:TextBox ID="İSsayfasayisi" runat="server" placeholder="sayfa sayısı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Fiyat:</p></td>
                                        <td><p><asp:TextBox ID="İSfiyat" runat="server" placeholder="fiyat" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button ID="İkinciel_satis" runat="server" Text="Satış" BorderStyle="Solid" BackColor="white" class="btn btn-light btn-xl"  BorderWidth="2px" OnClick="İkinciel_satis_Click" /></p></td>
                                    </tr>
                                </table>
                                </div>

                                <div style="float:right;" >
                                <table style="width: 50%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>Sıfır Kitap Satışı</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Yazar:</p></td>
                                        <td><p><asp:TextBox ID="SSyazar" runat="server" placeholder="yazar" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Tür:</p></td>
                                        <td><p><asp:DropDownList ID="SStur" runat="server" placeholder="tür">
                                                <asp:ListItem Value="Seçiniz">Seçiniz</asp:ListItem>
                                                <asp:ListItem Value="Hikaye"></asp:ListItem>
                                                <asp:ListItem>Şiir</asp:ListItem>
                                                <asp:ListItem>Roman</asp:ListItem>
                                                <asp:ListItem Value="Anı"></asp:ListItem>
                                                <asp:ListItem Value="Tarih"></asp:ListItem>
                                                <asp:ListItem Value="Öykü"></asp:ListItem>
                                                <asp:ListItem Value="Masal"></asp:ListItem>
                                                <asp:ListItem Value="Felsefe"></asp:ListItem>
                                                <asp:ListItem Value="Biyografi"></asp:ListItem>
                                                <asp:ListItem Value="Eğitim"></asp:ListItem>
                                                <asp:ListItem Value="Çizgi Roman"></asp:ListItem>
                                                <asp:ListItem Value="Tiyatro"></asp:ListItem>
                                                <asp:ListItem Value="Bilim"></asp:ListItem>
                                                <asp:ListItem Value="Bilim Kurgu"></asp:ListItem>
                                                <asp:ListItem Value="Polisiye"></asp:ListItem>
                                            </asp:DropDownList></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Kitap adı:</p></td>
                                        <td><p><asp:TextBox ID="SSkitapad" runat="server" placeholder="kitap adı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Sayfa sayısı:</p></td>
                                        <td><p><asp:TextBox ID="SSsayfasayisi" runat="server" placeholder="sayfa sayısı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Fiyat:</p></td>
                                        <td><p><asp:TextBox ID="SSfiyat" runat="server" placeholder="fiyat" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button ID="sifir_satis" runat="server" Text="Satış" BorderStyle="Solid" BackColor="white" class="btn btn-light btn-xl" BorderWidth="2px" OnClick="sifir_satis_Click"  /></p></td>
                                    </tr>
                                </table>
                                </div>
                            
                <div class="row gx-4 gx-lg-5 justify-content-center" ID="div1"  >
                    <div class="col-lg-8 text-center" ID="div2"  >
                        <%--<a class="btn btn-light btn-xl" href="#services">Get Started!</a>--%>
                    </div>
                </div>
                <div style="text-align:center; float:right; position: absolute; top:1250px; left:500px;">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Günlük Kazanç:"></asp:Label></td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="00,00 TL"></asp:Label></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="Button8" runat="server" Text="Hesapla" BorderStyle="Solid" BackColor="white" class="btn btn-light btn-xl" OnClick="Button8_Click" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services"  >
            <div class="container px-4 px-lg-5" style="display:inline-block; ">
                <div style="float:left;" >
                                <table style="width: 50%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>2.El Kitap Ekle</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Yazar:</p></td>
                                        <td><p><asp:TextBox ID="İEyazar" runat="server" placeholder="yazar" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Tür:</p></td>
                                        <td><p><asp:DropDownList ID="İEtur" runat="server" placeholder="tür">
                                                <asp:ListItem Value="Seçiniz">Seçiniz</asp:ListItem>
                                                <asp:ListItem Value="Hikaye"></asp:ListItem>
                                                <asp:ListItem>Şiir</asp:ListItem>
                                                <asp:ListItem>Roman</asp:ListItem>
                                                <asp:ListItem Value="Anı"></asp:ListItem>
                                                <asp:ListItem Value="Tarih"></asp:ListItem>
                                                <asp:ListItem Value="Öykü"></asp:ListItem>
                                                <asp:ListItem Value="Masal"></asp:ListItem>
                                                <asp:ListItem Value="Felsefe"></asp:ListItem>
                                                <asp:ListItem Value="Biyografi"></asp:ListItem>
                                                <asp:ListItem Value="Eğitim"></asp:ListItem>
                                                <asp:ListItem Value="Çizgi Roman"></asp:ListItem>
                                                <asp:ListItem Value="Tiyatro"></asp:ListItem>
                                                <asp:ListItem Value="Bilim"></asp:ListItem>
                                                <asp:ListItem Value="Bilim Kurgu"></asp:ListItem>
                                                <asp:ListItem Value="Polisiye"></asp:ListItem>
                                            </asp:DropDownList></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Kitap adı:</p></td>
                                        <td><p><asp:TextBox ID="İEkitapad" runat="server" placeholder="kitap adı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Sayfa sayısı:</p></td>
                                        <td><p><asp:TextBox ID="İEsayfasayisi" runat="server" placeholder="sayfa sayısı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Fiyat:</p></td>
                                        <td><p><asp:TextBox ID="İEfiyat" runat="server" placeholder="fiyat" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button ID="ikinciel_ekle" runat="server" Text="Ekle" BorderStyle="Solid" BackColor="#f4623a" class="btn btn-light btn-xl" BorderWidth="2px" OnClick="ikinciel_ekle_Click" /></p></td>
                                    </tr>
                                </table>
                                </div>

                                <div style="float:right;" >
                                <table style="width: 50%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>Sıfır Kitap Ekle</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Yazar:</p></td>
                                        <td><p><asp:TextBox ID="SEyazar" runat="server" placeholder="yazar" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Tür:</p></td>
                                        <td><p><asp:DropDownList ID="SEtur" runat="server" placeholder="tür">
                                                <asp:ListItem Value="Seçiniz">Seçiniz</asp:ListItem>
                                                <asp:ListItem Value="Hikaye"></asp:ListItem>
                                                <asp:ListItem>Şiir</asp:ListItem>
                                                <asp:ListItem>Roman</asp:ListItem>
                                                <asp:ListItem Value="Anı"></asp:ListItem>
                                                <asp:ListItem Value="Tarih"></asp:ListItem>
                                                <asp:ListItem Value="Öykü"></asp:ListItem>
                                                <asp:ListItem Value="Masal"></asp:ListItem>
                                                <asp:ListItem Value="Felsefe"></asp:ListItem>
                                                <asp:ListItem Value="Biyografi"></asp:ListItem>
                                                <asp:ListItem Value="Eğitim"></asp:ListItem>
                                                <asp:ListItem Value="Çizgi Roman"></asp:ListItem>
                                                <asp:ListItem Value="Tiyatro"></asp:ListItem>
                                                <asp:ListItem Value="Bilim"></asp:ListItem>
                                                <asp:ListItem Value="Bilim Kurgu"></asp:ListItem>
                                                <asp:ListItem Value="Polisiye"></asp:ListItem>
                                            </asp:DropDownList></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Kitap adı:</p></td>
                                        <td><p><asp:TextBox ID="SEkitapad" runat="server" placeholder="kitap adı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Sayfa sayısı:</p></td>
                                        <td><p><asp:TextBox ID="SEsayfasayisi" runat="server" placeholder="sayfa sayısı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr>
                                        <td><p>Fiyat:</p></td>
                                        <td><p><asp:TextBox ID="SEfiyat" runat="server" placeholder="fiyat" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button class="btn btn-light btn-xl" ID="sifir_ekle" runat="server" Text="Ekle" BorderStyle="Solid" BackColor="#f4623a" BorderWidth="2px" OnClick="sifir_ekle_Click" /></p></td>
                                    </tr>
                                </table>
                                </div>
 
            </div>
            
        </section>

        <section class="page-section" id="contact" style="background-color:rgba(244,98,58,255);" >
            <div class="container px-4 px-lg-5" style="display:inline-block;">
                  <div style="float:left;" >
                                <table style="width: 30%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>Yazar ile Sorgulama</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Yazar:</p></td>
                                        <td><p><asp:TextBox ID="YazarSorgu" runat="server" placeholder="yazar" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button ID="yazar_sorgu" runat="server" Text="Sorgula" BorderStyle="Solid" BackColor="white" class="btn btn-light btn-xl" BorderWidth="2px" OnClick="yazar_sorgu_Click"/></p></td>
                                    </tr>
                                </table>
                      <asp:ListBox ID="ListBox1" runat="server" Height="147px" Width="286px"></asp:ListBox>
                                </div>
                  <div style="float:left; margin:0 0 0 50px;" >
                                <table style="width: 30%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>Tür ile Sorgulama</p></th>
                                        </tr>
                                    </thead>
                                    
                                    <tr>
                                        <td><p>Tür:</p></td>
                                        <td><p><asp:DropDownList ID="TurSorgu" runat="server" placeholder="tür">
                                                <asp:ListItem Value="Seçiniz">Seçiniz</asp:ListItem>
                                                <asp:ListItem Value="Hikaye"></asp:ListItem>
                                                <asp:ListItem>Şiir</asp:ListItem>
                                                <asp:ListItem>Roman</asp:ListItem>
                                                <asp:ListItem Value="Anı"></asp:ListItem>
                                                <asp:ListItem Value="Tarih"></asp:ListItem>
                                                <asp:ListItem Value="Öykü"></asp:ListItem>
                                                <asp:ListItem Value="Masal"></asp:ListItem>
                                                <asp:ListItem Value="Felsefe"></asp:ListItem>
                                                <asp:ListItem Value="Biyografi"></asp:ListItem>
                                                <asp:ListItem Value="Eğitim"></asp:ListItem>
                                                <asp:ListItem Value="Çizgi Roman"></asp:ListItem>
                                                <asp:ListItem Value="Tiyatro"></asp:ListItem>
                                                <asp:ListItem Value="Bilim"></asp:ListItem>
                                                <asp:ListItem Value="Bilim Kurgu"></asp:ListItem>
                                                <asp:ListItem Value="Polisiye"></asp:ListItem>
                                            </asp:DropDownList></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button ID="sorgu_tur" runat="server" Text="Sorgula" BorderStyle="Solid" BackColor="white" class="btn btn-light btn-xl" BorderWidth="2px" OnClick="sorgu_tur_Click" /></p></td>
                                    </tr>
                                </table>
                      <asp:ListBox ID="ListBox2" runat="server" Height="147px" Width="286px"></asp:ListBox>
                                </div>
                                <div style="float:right;" >
                                <table style="width: 30%; border:1px;" runat="server">
                                    <thead>
                                        <tr>
                                            <th colspan="2"><p>Kitap Adı ile Sorgulama</p></th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td><p>Kitap adı:</p></td>
                                        <td><p><asp:TextBox ID="KitapSorgu" runat="server" placeholder="kitap adı" ></asp:TextBox></p></td>
                                    </tr>
                                    <tr >
                                        <td></td>
                                        <td style="float:right;"><p><asp:Button class="btn btn-light btn-xl" ID="kitap_sorgu" runat="server" Text="Sorgula" BorderStyle="Solid" BorderWidth="2px" BackColor="white" OnClick="kitap_sorgu_Click"/></p></td>
                                    </tr>
                                </table>
                        <asp:ListBox ID="ListBox3" runat="server" Height="147px" Width="286px"></asp:ListBox>

                                </div>
                
            </div>
        </form>
        </section>
        <!-- Portfolio-->
        <div id="portfolio"  style="background-color:white;" >
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <img src="template/assets/img/portfolio/fullsize/sebo.jpg"/>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <img src="template/assets/img/portfolio/fullsize/reşat.jpg"/>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <img src="template/assets/img/portfolio/fullsize/namık.jpg"/>
                        
                    </div>
                    <div class="col-lg-4 col-sm-6">
                       <img src="template/assets/img/portfolio/fullsize/oguz.jpg"/>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <img src="template/assets/img/portfolio/fullsize/orhan.jpg"/>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <img src="template/assets/img/portfolio/fullsize/halit.jpg"/>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        
        <!-- Contact-->
        
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2021 - Company Name</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update1.aspx.cs" Inherits="ASPProject.update1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    
<title>Banner</title>
</head>
     <style>
        @media screen and (max-width:1240px) {

[class*="ucol"]
{
    width:100%;   
}

}
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <!--#include file="anavbar.aspx"-->
           
    <section class="main">
    <!--#include file="asidebar.aspx"-->
     </section>
            <section>
        <div class="main--c">
            
    <div class=" file">
        <h2 class="text-left">Update Banner</h2>
        <hr>
         <div class="row file">
            <div class="col-4 ucol">
                <asp:FileUpload ID="FileUpload1" runat="server"  />
                             
             
             <p><b> image showuld be of 1920 x 900px</b><br/>Maximum Image size should be(300KB) </p>
                                </div>
             <div class="col-4 ucol">
                 <h3>Heading</h3>
                <asp:TextBox ID="head" CssClass="text" runat="server"></asp:TextBox>         
             </div>
             <div class="col-4 ucol">
                 <h3>Description</h3>
                  <asp:TextBox ID="desc" CssClass="text" runat="server"></asp:TextBox>
             </div>
             </div>
                     <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Update"  BackColor="#f5bf23" BorderColor="White" Font-Size="100%" ForeColor="White" Width="9%" OnClick="Button1_Click" />
        </div>
            </div>
            </section>
            </div>
    </form>
    <script>
        function func()
        {
            let ab = document.getElementById("FileUpload1").innerHTML;
            alert(ab);
        }
    </script>
</body>
</html>

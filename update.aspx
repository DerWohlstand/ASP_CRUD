<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="ASPProject.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    
    <title>Update</title>
</head>
    <style>
  
  
        .main--content
        {
            padding-top:6rem;
        }
        .text{
                min-width: -webkit-fill-available;
        }
        .submit{
            background:#f5bf23;
            color:white;
            min-width: -webkit-fill-available;

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
        <div class="main--content">  
            <table class="auto-style1">  
                <tr>  
                    <td class="auto-style2">  
                       <asp:Label runat="server" Text="User Name" ID="usernamelabelId"></asp:Label></td>  
                    <td>  
                       <asp:TextBox ID="UsernameId" CssClass="text" runat="server" ></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style2">  
                        <asp:Label runat="server" Text="Email ID"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="EmailId" CssClass="text" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td class="auto-style2">  
                        <asp:Label runat="server" Text="Contact"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="ContactId" CssClass="text" runat="server"></asp:TextBox></td>  
                </tr> 
                 
                <tr>  
                    <td class="auto-style2">  
                        <asp:Label runat="server" Text="Message"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="msg" CssClass="text" runat="server"></asp:TextBox></td>  
                </tr> 
                <tr>  
                    <td class="auto-style2"></td>  
                    <td>  
                        <asp:Button ID="ButtonId" CssClass="submit" runat="server" Text="Update" OnClick="ButtonId_Click"  /></td>  
                </tr>  
            </table>  
        </div>   </section>
        </div>
    </form>
</body>
</html>

  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="ASPProject.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    
    <title>Insert Review</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div>
            <!--#include file="anavbar.aspx"-->
           
    <section class="main">
    <!--#include file="asidebar.aspx"-->
     </section>
            <section>
        <div class="main--c">
            
    <div class=" file">
        <h2 class="text-left">INSERT REVIEW</h2>
        <hr>
         <div class="row file">
            <div class="col-4">
                 <h3>Profile </h3>
     <asp:TextBox ID="photo" CssClass="text" runat="server"></asp:TextBox>             </div>
            <div class="col-4">
                 <h3>Name</h3>
                <asp:TextBox ID="cname" CssClass="text" runat="server"></asp:TextBox>             </div>
             <div class="col-4">
                 <h3>Comment</h3>
                  <asp:TextBox ID="comment" CssClass="text" runat="server"></asp:TextBox>
             </div>
             </div>
                     <asp:Button ID="Button1" CssClass="btn" runat="server" Text="INSERT"  BackColor="#f5bf23" BorderColor="White" Font-Size="100%" ForeColor="White" Width="9%" OnClick="Button1_Click" />
        </div>
            
           
                  <div class="title">
                      <h2>ADDED REVIEW ON MAIN PAGE</h2>
                      </div>
            <div class="table">
                    
                        
                 <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                         <div class="row" style="padding-block:1rem">
                                <div class="col-1"><h5>Id</h5></div>
                              <div class="col-5"><h5>Profile</h5></div>
                                <div class="col-2"><h5>Client Name</h5></div>
                                 <div class="col-4"><h5>Comment</h5></div>
                                



                            
                                </div>
                         
                                                 
                                              </HeaderTemplate>
                        

                     <ItemTemplate>
                            <div class="row" style="padding-block:1rem">
                                <div class="col-1"><p><%#Eval("id") %></p></div>
                                <div class="col-5"><img src="imgupload/<%#Eval("img") %>"/></div>
                                <div class="col-2"><p><%#Eval("client") %></p></div>
                                 <div class="col-4"><p><%#Eval("comment") %></p></div>
                                
                                

                            
                                </div>
                         </ItemTemplate>
                                      </asp:Repeater>


                    </div>
                    </div>
                   </div>  
                </section>
        </div>
    </form>
</body>
</html>

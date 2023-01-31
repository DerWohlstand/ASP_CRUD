<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="areview.aspx.cs" Inherits="ASPProject.areview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/styles.css" rel="stylesheet" />
     <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>All Reviews</title>
</head>
     <style>
          .table{
            height:80%;
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
            <div class="table">
                    
                        
                 <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                         <div class="row" style="padding-block:1rem">
                                <div class="col-1"><h5>Id</h5></div>
                              <div class="col-3"><h5>Profile</h5></div>
                                <div class="col-2"><h5>Client Name</h5></div>
                                 <div class="col-3"><h5>Comment</h5></div>
                                 <div class="col-3"><h5>Option</h5></div>



                            
                                </div>
                         
                                                 
                                              </HeaderTemplate>
                        

                     <ItemTemplate>
                            <div class="row" style="padding-block:1rem">
                                <div class="col-1"><p><%#Eval("id") %></p></div>
                                <div class="col-3"><img src="imgupload/<%#Eval("img") %>"/></div>
                                <div class="col-2"><p><%#Eval("cname") %></p></div>
                                 <div class="col-3"><p><%#Eval("comment") %></p></div>
                                
                                 <div class="col-3"><a href="add.aspx?id=<%#Eval("id") %>" >Add</a></div>

                            
                                </div>
                         </ItemTemplate>
                                      </asp:Repeater>


                    </div>
                      </div>
                </section>
        </div>
    </form>
</body>
</html>

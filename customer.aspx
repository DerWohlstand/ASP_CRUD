<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="ASPProject.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">


    <title>Customers</title>
</head>
    <style>
        .Dbtn
        {
                border: none;
    background: white;
    color: red;
    
    font-weight: bold;
   
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <!--#include file="anavbar.aspx"-->
           
    <section class="main">
    <!--#include file="asidebar.aspx"-->
     </section>
        <div class="main--content">

                <div class="title">
                    <h2 class="section--title">Recent Messages</h2>
                </div>
                <div class="table">
                    <table id="table">
                        
                 <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>email</th>
                                <th>phone</th>
                                <th>message</th>
                                <th>Options  </th>
                        </tr>
                        </thead>
                                              </HeaderTemplate>
                        

                     <ItemTemplate>
                         
                            <tr>
                                <td class="id" id="ab" name="ab"><%#Eval("id") %></td>
                                <td><%#Eval("fname") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("phone") %></td>
                                <td class="pending"><%#Eval("msg") %></td>
                                <td > <a href="update.aspx?id=<%#Eval("id") %>" >Update</a></td>
                                <td > <a href="Delete.aspx?id=<%#Eval("id") %>" >Delete</a></td>
                                

                            </tr>
                         </ItemTemplate>
                                      </asp:Repeater>

                        

                        </table>
                    </div>
                  </div>
            <asp:Button ID="del" runat="server" Text="Button" OnClick="del_Click" />
             
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script>

        function Execute() {
            var btn = document.getElementById("del");
            btn.click();
        }
            </script>
</body>
</html>

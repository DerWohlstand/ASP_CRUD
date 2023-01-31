

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="ASPProject.admin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <title>Admin</title>
</head>
    <style>
        @media screen and (max-width:1240px) {
.cards{
    display:block;
}

}

    </style>
<body>
        <form id="form2" runat="server">

        <div>
    <!--#include file="anavbar.aspx"-->
           
    <section class="main">
    <!--#include file="asidebar.aspx"-->
        
        <div class="main--content">
                    <h2 class="section--title">Welcome <i> <asp:Label runat="server" Id="uname" Font-Italic="true"></asp:Label> </i></h2>

            <div class="overview">
                <div class="title">
                    <h2 class="section--title">Overview</h2>
                 </div>
                <div class="cards">
                    <div class="card card-1 text-center">
                        <div class="card--data">
                            <div class="card--content">
                                <h5 class="card--title">Total Banners</h5>
                                <h1 class="h1"><asp:Label ID="label1" runat="server"></asp:Label></h1>
                            </div>
                            <i class="ri-user-2-line card--icon--lg"></i>
                        </div>
                    </div>
                    <div class="card card-2">
                       <div class="card--data">
                            <div class="card--content">
                                <h5 class="card--title">Total Services</h5>
                                <h1 class="h1"><asp:Label ID="label2" runat="server"></asp:Label></h1>
                            </div>
                            <i class="ri-user-2-line card--icon--lg"></i>
                        </div>
                                        </div>
                    <div class="card card-3">
                       <div class="card--data">
                            <div class="card--content">
                                <h5 class="card--title">Total Projects</h5>
                                <h1 class="h1"><asp:Label ID="label3" runat="server"></asp:Label></h1>
                            </div>
                            <i class="ri-user-2-line card--icon--lg"></i>
                        </div>
                     </div>
                    <div class="card card-4">
                       <div class="card--data">
                            <div class="card--content">
                                <h5 class="card--title">Total Blogs</h5>
                                <h1 class="h1"><asp:Label ID="label4" runat="server"></asp:Label></h1>
                            </div>
                            <i class="ri-user-2-line card--icon--lg"></i>
                        </div>
                    </div>
          
                  
           </div>
                <div class="cards">
                   <div class="card card-5">
                       <div class="card--data">
                            <div class="card--content">
                                <h5 class="card--title">Total Customers</h5>
                                <h1 class="h1"><asp:Label ID="label5" runat="server"></asp:Label></h1>
                            </div>
                            <i class="ri-user-2-line card--icon--lg"></i>
                        </div>
                    </div>
                    </div>
        </div>
    </section>
        </div>
            
            </form>
</body>
    </html>
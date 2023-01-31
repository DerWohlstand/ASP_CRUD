<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="ASPProject.blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="CSS/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
  
    <title>Blog</title>
</head>
    <style>
          .input {
    border: none;
    background: transparent;
    font-size: 20px;
    font-weight: 500;
    //width: auto;
    border-bottom: 2px solid black;
    outline: none;
}
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
        <h2 class="text-left">Add Blogs</h2>
        <hr>
         <div class="row file">
            <div class="col-4 ucol">
                <asp:FileUpload ID="FileUpload1" runat="server" />
             <p><b> image showuld be of 512 x 512px</b><br/>Maximum Image size should be(50KB) </p>
                                </div>
             <div class="col-4 ucol">
                 <h3>Heading</h3>
                 <input type="text" class="text" name="head" id="head"/>
             </div>
             <div class="col-4 ucol">
                 <h3>Description</h3>
                 <textarea id="desc" name="desc" rows="3" cols="40"></textarea>
             </div>
             </div>
                     <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit"  BackColor="#f5bf23" BorderColor="White" Font-Size="100%" ForeColor="White" Width="9%" OnClick="Button1_Click" />

             <hr/>

                    <div class="title">
                    <h2 class="section--title">Recent Services</h2>
                </div>
                <div class="table">
                    
                        
                 <asp:Repeater ID="Repeater1" runat="server">
                     <HeaderTemplate>
                         <div class="row" style="padding-block:1rem">
                                <div class="col-1"><h5>Id</h5></div>
                                 <div class="col-3"><h5>Image Name</h5></div>
                                 <div class="col-4"> <h5>Image </h5></div>   
                                 <div class="col-1"><h5>Heading</h5></div>
                                 <div class="col-2"><h5>Description</h5></div>
                                 <div class="col-1"><h5>Options</h5></div>


                            
                                </div>
                         
                                                 
                                              </HeaderTemplate>
                        

                     <ItemTemplate>
                            <div class="row" style="padding-block:1rem">
                                <div class="col-1"><p><%#Eval("id") %></p></div>
                                 <div class="col-3"><p><%#Eval("img") %></p></div>
                                 <div class="col-4"> <img  src="imgupload/<%#Eval("img")%>" style="width:30%;block-size:fit-content;position:unset"/></div>   
                                 <div class="col-1"><p><%#Eval("head") %></p></div>
                                 <div class="col-2"><p><%#Eval("descp") %></p></div>
                                 <div class="col-1"><a href="update4?id=<%#Eval("id") %>">Update</a></div>



                            
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

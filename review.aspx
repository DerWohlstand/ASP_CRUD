<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="ASPProject.review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
    <!-- custom css file link  -->
    <title>Add review</title>
</head>
    <style>

          body {
   background:#EDEDED;
    text-align: center;
     font-size: 100%;
}

.rmain {
    background: white;
    margin-left: 30rem;
    margin-right: 30rem;
    border-radius: 2%;
}

.rbody {
    padding: 2%;
    font-family: sans-serif;
}

.rhead {
    text-align: left;
    font-family: sans-serif;
    background: #f5bf23;
    padding: 2%;
}

.img {
    text-align: center
}

.rimg {
    border-radius: 52%;
    border: 1px solid #ddd;
    width: 7rem;
}

.name {
    text-align: left;
}

.text {
    border-inline-start: none;
    border-inline-end: none;
    border-top: none;
    width: -webkit-fill-available;
}

        .rsubmit {
            color: white;
            background: #f5bf23;
            border: none;
            font-size: larger;
            padding: 2%;
            border-radius: 5%;
        }

       
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            
<!-- add review -->
    <section class="body">
 <div class="rmain shadow mt-5">
        <h2 class="rhead">
            Add Review
        </h2>
        <div class="rbody">
           
            <div class=img>
                 
                    <img class="rimg" id="blah" src="/images/photo.png" alt="image"/>
            </div>
             <asp:FileUpload  runat="server"  id="imgInp"/>
           
            <div class="name">
                <h4 class="rheading">
                    Name
                </h4>
                <asp:TextBox runat="server" id="rname" CssClass="text"></asp:TextBox>
            
                <h4 class="rheading">
                   Add Comment
                </h4>
                <asp:TextBox runat="server" id="rcomment" CssClass="text"></asp:TextBox>
            </div>
            <h3 class="rbtn">
                            <asp:Button ID="Button1" CssClass="rsubmit" runat="server" Text="Submit" OnClick="Button1_Click"  />

         
            </h3>
            </div>
    </div>
        </section>
<!-- add review ends-->
            
            <h3><a href="index.aspx">---Back</a></h3>
        </div>
    </form>
</body>
    <script>
        imgInp.onchange = evt =>
        {
            const [file] = imgInp.files
            if (file) {
                blah.src = URL.createObjectURL(file)
            }
        }
    </script>
</html>

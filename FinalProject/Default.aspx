<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject.Default" %>

<%@ MasterType VirtualPath="~/Site1.Master" %> 
 







<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">


     

   
    <div class="w3-display-container w3-container">
   <img class="mySlides" src="images/iphone7.jpg" style="width:70%">
  <img class="mySlides" src="images/iphone6s.jpg" style="width:70%">
  <img class="mySlides" src="images/samsung.jpg" style="width:70%">
    <div class="w3-display-topleft w3-padding-xxlarge w3-text-red">
      <h1 class="w3-jumbo w3-hide-small">New arrivals</h1>
      <h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
      
      <p><a href="#jeans" class="w3-btn w3-padding-large w3-large">SHOP NOW</a></p>
    </div>
  </div>

  <div class="w3-container w3-text-grey" id="jeans">
    <p>8 items</p>
  </div>

  <!-- Product grid -->
  <asp:DataList ID="DataListEL" runat="server" RepeatDirection="Horizontal" RepeatColumns="4"   HorizontalAlign="Center" >

         
        


        <ItemTemplate>

         <div style="margin-left: auto; margin-right: auto; text-align: center;">

                            <a href="/WebPages/Product.aspx?product=<%#Eval("Partname")%>">
                                <asp:Image ID="imgEmp" runat="server" Width="230px" Height="200px" ImageUrl='<%#Eval("Imagename") %>' style="padding-left:40px"/><br />
                                <br />
                                 <asp:Label ID="lblCName" runat="server"  Text='<%#Eval("Partname") %>'   ></asp:Label> 
                                <br />
                                <asp:Label ID="LabelPrice" runat="server"  Text='<%#Eval("Unitprice") %>'   ForeColor="BlueViolet" ></asp:Label> 
                       </a>
            </div>

        </ItemTemplate>

       
    </asp:DataList>

   <%-- <%int a = 123; %>

   

     <%  
         int imgId ;

         for (int i = 1; i < 6; i++)
         {
             imgId = i;
             adptParts.imgFill(tblpart, imgId);
             var row = tblpart[0];   %>




 <img src=<%=row.Imagename %> >

    <%  } %>--%>

   
<script>
// Accordion 
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}


function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


// Script to open and close sidenav
function w3_open() {
    document.getElementById("mySidenav").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}



</script>
</asp:Content>
 


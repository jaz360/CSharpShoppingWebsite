<%@ Page Language="C#"  MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="FinalProject.WebPages.Product" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">



     <div id="blackBar">   
<P>
    
<CENTER>
 <b> ELECTRONICS </b>
</CENTER>

</P>

</div>


    <asp:DataList ID="DataListProd" runat="server" RepeatDirection="Horizontal" RepeatColumns="4"   HorizontalAlign="Center" OnItemDataBound="DataListProd_ItemDataBound"  >




         <ItemTemplate>

         <div style="margin-left: auto; margin-right: auto; text-align: left;">

                           
                                <asp:Image ID="imgEmp" runat="server" Width="430px" Height="400px" ImageUrl='<%#Eval("Imagename") %>' style="padding-left:40px"/><br />
                                <br />
                                 <asp:Label ID="lblCName" runat="server"  Text='<%#Eval("Partname") %>'   ></asp:Label> 
                                <br />
                               <ul> <li>   <asp:Label ID="LblFeatures" runat="server"   Text='<%#Eval("Partdesc").ToString().Replace(",","<li>") +"</li>" %>'    ></asp:Label>  </ul>
                                <br />

             
             
                                        

                            <center> Buy Now:   <asp:Label ID="LabelPrice"  runat="server"  Text='<%#Bind("Unitprice") %>'   ForeColor="BlueViolet" ></asp:Label> </center>
                            <br />
                                
                            
                    

             
            </div>
            

        </ItemTemplate>

        </asp:DataList>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <center> In Stock <asp:Label ID="lblInStock"  runat="server"></asp:Label>  </center>
    <br />
     <center>  <asp:Label ID="lblMsg"  runat="server"  Text="Enter Quantity" ></asp:Label>  <asp:TextBox ID="txtQuantity" runat="server" /> &nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="ValidErrorValidator" runat="server" ControlToValidate="txtQuantity" Display="Dynamic" ErrorMessage="Please Enter Quantity " ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lblErrorMsg" runat="server"></asp:Label>
     </center>
    <br />
    
    <br />
      <center>  <asp:ImageButton ID="ImgaddToCart" runat="server" Width="100px" Height="90px" ImageUrl="~/Images/add-to-cart.png" OnClick="ImgaddToCart_Click" />&nbsp;</center>
   






    
   


    <style>
        #blackBar{
position:RELEATIVE;
top:0;
left:0;
width:100%;
height:60px;
background-color:GREY;
font-family: "Montserrat";
FONT-SIZE: 44PX;


}
    </style>
    </asp:Content>





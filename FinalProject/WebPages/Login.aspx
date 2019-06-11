<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Login.aspx.cs" Inherits="FinalProject.WebPages.Login" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1" >


    <div id="blackBar">  
     <P>
    
         
    
<CENTER>
 <b> LOGIN </b>
</CENTER>

</P>
         <p>
         </p>
         </div>


   




     &nbsp;<style>
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

        #ShipInfo{
            font-family: "Montserrat";
            
        }
    </style>&nbsp;
    <br />
    <br />
    <br />
    <center> 
     <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUserName" runat="server" Width="156px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1"  />
        <br />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br /> 
        <br />
    </center>
    </asp:Content>
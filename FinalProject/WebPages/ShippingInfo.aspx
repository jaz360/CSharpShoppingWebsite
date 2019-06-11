<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShippingInfo.aspx.cs" Inherits="FinalProject.WebPages.ShippingInfo" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1" >

     <div id="blackBar">  
     <P>
    
<CENTER>
 <b> SHIPPING INFO </b>
</CENTER>

         &nbsp;</P>
         <p>
         </p>
         </div>

       
    <div id="ShipInfo" style="margin-left: auto; margin-right: auto; text-align: center";>




        <br />
        <br />
        <br />
        <br />
        <br />
       
         Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="nameValid" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Street:<asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="streetValid" runat="server" ControlToValidate="txtStreet" Display="Dynamic" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        City:<asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="cityValid" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Province:
        <asp:DropDownList ID="ddlProv" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        Postal Code:<asp:TextBox ID="txtPcode" runat="server"></asp:TextBox>

        &nbsp;
        <asp:RequiredFieldValidator ID="postValid" runat="server" ControlToValidate="txtPcode" Display="Dynamic" ErrorMessage="This Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
<br />
        <asp:Button ID="btnContinue" runat="server"  Text="Continue"  ForeColor="Red" BackColor="Cyan" OnClick="btnContinue_Click" />
        <br />
        <br />
        <br />
        <br />




        </div>





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

        #ShipInfo{
            font-family: "Montserrat";
            
        }
    </style>





</asp:Content>
<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Headphones.aspx.cs" Inherits="FinalProject.WebPages.Headphones" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">

    <div id="blackBar">   
<P>
<CENTER>
 <b> HEADPHONES </b>
</CENTER>

</P>

</div>

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


<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="FinalProject.WebPages.CheckOut" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 



<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1" >
   
    <div id="blackBar">  
     <P>
    
<CENTER>
 <b> CHECKOUT </b>
</CENTER>

</P>
        </div>
        <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
        

                
                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical" RepeatLayout="Table"  BorderColor="Black" CellSpacing="2"   CellPadding="9" HorizontalAlign="Center" >
                   <HeaderTemplate>

                          <tr> <th> Product Name </th>    <th> Price </th> <th> Quantity </th>  <th> Sub Total </th>  </tr> 

                   </HeaderTemplate>
                     <ItemTemplate>

                    

                    <tr> <td> <%#Eval("ProdName")%>  </td>  <td> <%#Eval("ProdPrice")%>  </td> <td> <%#Eval("Pqty")%>  </td>  <td> <%#Eval("ProdSub")%>  </td> <tr>
                        
                        
                    </ItemTemplate>

        </asp:DataList>
    <br /> <br />
   
    <center><asp:Button ID="btnContinue" runat="server"  Text="Continue"  ForeColor="Red" BackColor="Cyan" OnClick="btnContinue_Click" /> </center>
    <br />
        
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
   
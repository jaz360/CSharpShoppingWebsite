<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="FinalOrderPage.aspx.cs" Inherits="FinalProject.WebPages.FinalOrderPage" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>





<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1" >
    <center><b>ORDER DETAILS</b></center>
<asp:DataList ID="DataList1" runat="server" RepeatDirection="Vertical" RepeatLayout="Table"  BorderColor="Black" CellSpacing="2"   CellPadding="9" HorizontalAlign="Center" >
                   <HeaderTemplate>
                                          

                          <tr> <th> Product Name </th>    <th> Price </th> <th> Quantity </th>  <th> Sub Total </th>  </tr> 

                   </HeaderTemplate>
                     <ItemTemplate>
                         <div style="margin-left: auto; margin-right: auto; text-align: left;">
                    

                    <tr> <td> <%#Eval("ProdName")%>  </td>  <td> <%#Eval("ProdPrice")%>  </td> <td> <%#Eval("Pqty")%>  </td>  <td> <%#Eval("ProdSub")%>  </td> <tr>
                        
                        </div>
                    </ItemTemplate>

        </asp:DataList>

    <br /> 
    <br /> 
                                      <center><b>SHIPPING INFORMATION</b></center>
    <br />
    <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" RepeatLayout="Table"  BorderColor="Black" CellSpacing="2"   CellPadding="9" HorizontalAlign="Center" >
                   <HeaderTemplate>
                                                      
                          <tr> <th> Name </th>    <th> Street </th> <th> City </th>  <th> Province </th>  <th> Postal Code </th>  </tr> 

                   </HeaderTemplate>
                     <ItemTemplate>

                    <div style="margin-left: auto; margin-right: auto; text-align: left;">

                    <tr> <td> <%#Eval("CustName")%>  </td>  <td> <%#Eval("CustStreet")%>  </td> <td> <%#Eval("CustCity")%>  </td>  <td> <%#Eval("CustProv")%>  </td>  <td> <%#Eval("CustPostCode")%>  </td><tr>
                        
                        </div>
                    </ItemTemplate>

        </asp:DataList>
                                                <br />
                                                <br />
                                                 <center><b>Total INFORMATION</b></center>
                                    <br />
     <asp:DataList ID="DataList3" runat="server" RepeatDirection="Vertical" RepeatLayout="Table"  BorderColor="Black" CellSpacing="2"   CellPadding="9" HorizontalAlign="Center" >
                   <HeaderTemplate>
                                                      
                          <tr> <th> Tax </th>    <th> Shipping Cost </th>   <th> Total </th>  </tr> 

                   </HeaderTemplate>
                     <ItemTemplate>

                    <div style="margin-left: auto; margin-right: auto; text-align: left;">

                    <tr> <td> <%#Eval("Tax")%>% </td>  <td> <%#Eval("ShippingCost")%>  </td> <td> <%#Eval("Total")%>  </td>  <tr>
                        
                        </div>
                    </ItemTemplate>

        </asp:DataList>

    <center><asp:Button ID="btnContinue" runat="server"  Text="Confirm & Pay"  ForeColor="Red" BackColor="Cyan" OnClick="btnContinue_Click" /></center> 
    </asp:Content>
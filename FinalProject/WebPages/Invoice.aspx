<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="FinalProject.WebPages.Invoice" %>
<%@ Import Namespace="FinalProject.Classes" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	
	<title>Invoice</title>
	
	<link rel='stylesheet' type='text/css' href='/css/style.css' />
	<link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
	<script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='js/example.js'></script>

</head>

<body>

	<div id="page-wrap">

		<textarea id="header" readonly>INVOICE</textarea>
		
		<div id="identity">
		
            
             <img id="image" class="img" src="/Images/logo.png" alt="logo" />
                <asp:DataList ID="DataList1" runat="server">
                    
               <ItemTemplate>

                   <%#Eval("CustName")%><br />
                   <%#Eval("CustStreet")%> <br />
                   <%#Eval("CustCity")%><br />
                   <%#Eval("CustProv")%><br />
                   <%#Eval("CustPostCode")%>

                   
               </ItemTemplate>  

                    
                      
                </asp:DataList>



            

              

              
             
            
		
		</  div>
		
		<div style="clear:both"></div>
		
		<div id="customer">

           
            <br /> <br />

<asp:DataList ID="DataList2" runat="server"> 
    <ItemTemplate>
       <b> <%#Eval("CustName")%> </b>
    </ItemTemplate>
</asp:DataList>



            <table id="meta">
                
                <tr>

                    <td class="meta-head">Date</td>
                    <td><textarea id="date" readonly><%=today.ToString("d") %></textarea></td>
                </tr>
                

            </table>
		
		</div>
		
		<table id="items">
		
		  <tr>
		      <th>Item</th>
		      
		      <th>Quantity</th>
		      <th>Price</th>
		  </tr>
		<%foreach (CheckOutLogic cs in list)
            {
                %>
		  <tr class="item-row">
                      <td class="item-name"><textarea readonly><%=cs.ProdName %> </textarea>
		      <td><textarea class="qty" readonly> <%=cs.Pqty %> </textarea></td>
		      <td><span class="price" readonly>$<%=cs.ProdSub %></span></td>
		  </tr>
		  
              <% } %>   
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
		  <tr>
              <%decimal sub = 0; %>
              <%foreach (CheckOutLogic cs in list) {%>
              <% sub += cs.ProdSub; %>
              <%} %>
		      <td colspan="1" class="blank"> </td>
		      <td colspan="1" class="total-line">Subtotal</td>
		      <td class="total-value"><div id="subtotal">$<%=sub %></div></td>
		  </tr>
                  

            <%foreach (ShippingInfoLogic si in shipList) {%>
                  <tr>
		      <td colspan="1" class="blank"> </td>
		      <td colspan="1" class="total-line">Tax</td>
		      <td class="total-value"><div id="subtotal"><%=si.Tax%>%</div></td>
		  </tr>
                  
                  
		  <tr>

		      <td colspan="1" class="blank"> </td>
		      <td colspan="1" class="total-line">Shipping</td>
		      <td class="total-value"><div id="total">$<%=si.ShippingCost%></div></td>
		  </tr>
		  
		  <tr>
		      <td colspan="1" class="blank"> </td>
		      <td colspan="1" class="total-line balance">Total</td>
		      <td class="total-value balance"><div class="due">$<%=si.Total%></div></td>
		  </tr>
		
		</table>

        <%} %> 
		
		<div id="terms">
		  <h5>Terms</h5>
                  
		  <textarea readonly>No Refunds Under Any Circumstances </textarea>
                  
		</div>
	
	</div>
	<style>
                      .img{
                          position: relative;
                          width: 500px;
                      }
                      
                      
                  </style>
</body>
                  
</html>
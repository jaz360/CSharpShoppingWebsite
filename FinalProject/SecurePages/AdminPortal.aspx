﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPortal.aspx.cs" Inherits="FinalProject.SecurePages.AdminPortal" %>
<%@ MasterType VirtualPath="~/Site1.Master" %> 


<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1" >


    <div id="blackBar">  
     <P>
    
<CENTER>
 <b> ADMIN PORTAL </b>
</CENTER>

</P>
         <p>
         </p>
         </div>

    <br />
    <br />
    <br />

  <center>  <h3> Click on the respective buttons to load a table from the database  </h3></center>

    <br />  <br /> 
    <center>
    <asp:Button ID="btnPart" runat="server" Text="Part" OnClick="btnPart_Click" />   
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Button ID="btnCustomer" runat="server" Text="Customers" OnClick="btnCustomer_Click" />
         

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         

     <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" />  
        <br />
        <br />
        <br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        
            <ContentTemplate>
        <asp:GridView ID="grdPart" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnPageIndexChanged="grdTable_PageIndexChanged" OnPageIndexChanging="grdTable_PageIndexChanging" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Partno" DataSourceID="sqlPart" >
            <Columns>
                <asp:BoundField DataField="Partno" HeaderText="Partno" SortExpression="Partno" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Partname" HeaderText="Partname" SortExpression="Partname" />
                <asp:BoundField DataField="Imagename" HeaderText="Imagename" SortExpression="Imagename" />
                <asp:BoundField DataField="Partdesc" HeaderText="Partdesc" SortExpression="Partdesc" />
                <asp:BoundField DataField="Onhand" HeaderText="Onhand" SortExpression="Onhand" />
                <asp:BoundField DataField="Partclass" HeaderText="Partclass" SortExpression="Partclass" />
                <asp:BoundField DataField="Unitprice" HeaderText="Unitprice" SortExpression="Unitprice" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
                <br />
                <asp:SqlDataSource ID="sqlPart" runat="server" ConnectionString="<%$ ConnectionStrings:csBrandedHardware %>" SelectCommand="SELECT * FROM [part]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [part] WHERE [Partno] = @original_Partno AND [Partname] = @original_Partname AND [Imagename] = @original_Imagename AND (([Partdesc] = @original_Partdesc) OR ([Partdesc] IS NULL AND @original_Partdesc IS NULL)) AND (([Onhand] = @original_Onhand) OR ([Onhand] IS NULL AND @original_Onhand IS NULL)) AND (([Partclass] = @original_Partclass) OR ([Partclass] IS NULL AND @original_Partclass IS NULL)) AND (([Unitprice] = @original_Unitprice) OR ([Unitprice] IS NULL AND @original_Unitprice IS NULL))" InsertCommand="INSERT INTO [part] ([Partname], [Imagename], [Partdesc], [Onhand], [Partclass], [Unitprice]) VALUES (@Partname, @Imagename, @Partdesc, @Onhand, @Partclass, @Unitprice)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [part] SET [Partname] = @Partname, [Imagename] = @Imagename, [Partdesc] = @Partdesc, [Onhand] = @Onhand, [Partclass] = @Partclass, [Unitprice] = @Unitprice WHERE [Partno] = @original_Partno AND [Partname] = @original_Partname AND [Imagename] = @original_Imagename AND (([Partdesc] = @original_Partdesc) OR ([Partdesc] IS NULL AND @original_Partdesc IS NULL)) AND (([Onhand] = @original_Onhand) OR ([Onhand] IS NULL AND @original_Onhand IS NULL)) AND (([Partclass] = @original_Partclass) OR ([Partclass] IS NULL AND @original_Partclass IS NULL)) AND (([Unitprice] = @original_Unitprice) OR ([Unitprice] IS NULL AND @original_Unitprice IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Partno" Type="Int32" />
                        <asp:Parameter Name="original_Partname" Type="String" />
                        <asp:Parameter Name="original_Imagename" Type="String" />
                        <asp:Parameter Name="original_Partdesc" Type="String" />
                        <asp:Parameter Name="original_Onhand" Type="Int32" />
                        <asp:Parameter Name="original_Partclass" Type="String" />
                        <asp:Parameter Name="original_Unitprice" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Partname" Type="String" />
                        <asp:Parameter Name="Imagename" Type="String" />
                        <asp:Parameter Name="Partdesc" Type="String" />
                        <asp:Parameter Name="Onhand" Type="Int32" />
                        <asp:Parameter Name="Partclass" Type="String" />
                        <asp:Parameter Name="Unitprice" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Partname" Type="String" />
                        <asp:Parameter Name="Imagename" Type="String" />
                        <asp:Parameter Name="Partdesc" Type="String" />
                        <asp:Parameter Name="Onhand" Type="Int32" />
                        <asp:Parameter Name="Partclass" Type="String" />
                        <asp:Parameter Name="Unitprice" Type="Decimal" />
                        <asp:Parameter Name="original_Partno" Type="Int32" />
                        <asp:Parameter Name="original_Partname" Type="String" />
                        <asp:Parameter Name="original_Imagename" Type="String" />
                        <asp:Parameter Name="original_Partdesc" Type="String" />
                        <asp:Parameter Name="original_Onhand" Type="Int32" />
                        <asp:Parameter Name="original_Partclass" Type="String" />
                        <asp:Parameter Name="original_Unitprice" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="grdCustomers" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Custno" DataSourceID="sqlCustomers" >
                    <Columns>
                        <asp:BoundField DataField="Custno" HeaderText="Custno" InsertVisible="False" ReadOnly="True" SortExpression="Custno" />
                        <asp:BoundField DataField="Custname" HeaderText="Custname" SortExpression="Custname" />
                        <asp:BoundField DataField="Custstreet" HeaderText="Custstreet" SortExpression="Custstreet" />
                        <asp:BoundField DataField="Custcity" HeaderText="Custcity" SortExpression="Custcity" />
                        <asp:BoundField DataField="Custprov" HeaderText="Custprov" SortExpression="Custprov" />
                        <asp:BoundField DataField="Custpcode" HeaderText="Custpcode" SortExpression="Custpcode" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="sqlCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:csBrandedHardware %>" SelectCommand="SELECT * FROM [customer]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [customer] WHERE [Custno] = @original_Custno AND [Custname] = @original_Custname AND [Custstreet] = @original_Custstreet AND [Custcity] = @original_Custcity AND [Custprov] = @original_Custprov AND [Custpcode] = @original_Custpcode" InsertCommand="INSERT INTO [customer] ([Custname], [Custstreet], [Custcity], [Custprov], [Custpcode]) VALUES (@Custname, @Custstreet, @Custcity, @Custprov, @Custpcode)" OldValuesParameterFormatString="original_{0}" OnSelecting="sqlCustomers_Selecting" UpdateCommand="UPDATE [customer] SET [Custname] = @Custname, [Custstreet] = @Custstreet, [Custcity] = @Custcity, [Custprov] = @Custprov, [Custpcode] = @Custpcode WHERE [Custno] = @original_Custno AND [Custname] = @original_Custname AND [Custstreet] = @original_Custstreet AND [Custcity] = @original_Custcity AND [Custprov] = @original_Custprov AND [Custpcode] = @original_Custpcode">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Custno" Type="Int32" />
                        <asp:Parameter Name="original_Custname" Type="String" />
                        <asp:Parameter Name="original_Custstreet" Type="String" />
                        <asp:Parameter Name="original_Custcity" Type="String" />
                        <asp:Parameter Name="original_Custprov" Type="String" />
                        <asp:Parameter Name="original_Custpcode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Custname" Type="String" />
                        <asp:Parameter Name="Custstreet" Type="String" />
                        <asp:Parameter Name="Custcity" Type="String" />
                        <asp:Parameter Name="Custprov" Type="String" />
                        <asp:Parameter Name="Custpcode" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Custname" Type="String" />
                        <asp:Parameter Name="Custstreet" Type="String" />
                        <asp:Parameter Name="Custcity" Type="String" />
                        <asp:Parameter Name="Custprov" Type="String" />
                        <asp:Parameter Name="Custpcode" Type="String" />
                        <asp:Parameter Name="original_Custno" Type="Int32" />
                        <asp:Parameter Name="original_Custname" Type="String" />
                        <asp:Parameter Name="original_Custstreet" Type="String" />
                        <asp:Parameter Name="original_Custcity" Type="String" />
                        <asp:Parameter Name="original_Custprov" Type="String" />
                        <asp:Parameter Name="original_Custpcode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="grdOrders" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Orderno" DataSourceID="sqlOrders" OnSelectedIndexChanged="grdOrders_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Orderno" HeaderText="Orderno" InsertVisible="False" ReadOnly="True" SortExpression="Orderno" />
                        <asp:BoundField DataField="Orderdate" HeaderText="Orderdate" SortExpression="Orderdate" />
                        <asp:BoundField DataField="Custno" HeaderText="Custno" SortExpression="Custno" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <br />
                <br />
                <asp:SqlDataSource ID="sqlOrders" runat="server" ConnectionString="<%$ ConnectionStrings:csBrandedHardware %>" SelectCommand="SELECT * FROM [orders]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [orders] WHERE [Orderno] = @original_Orderno AND (([Orderdate] = @original_Orderdate) OR ([Orderdate] IS NULL AND @original_Orderdate IS NULL)) AND [Custno] = @original_Custno" InsertCommand="INSERT INTO [orders] ([Orderdate], [Custno]) VALUES (@Orderdate, @Custno)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [orders] SET [Orderdate] = @Orderdate, [Custno] = @Custno WHERE [Orderno] = @original_Orderno AND (([Orderdate] = @original_Orderdate) OR ([Orderdate] IS NULL AND @original_Orderdate IS NULL)) AND [Custno] = @original_Custno">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Orderno" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_Orderdate" />
                        <asp:Parameter Name="original_Custno" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="Orderdate" />
                        <asp:Parameter Name="Custno" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="Orderdate" />
                        <asp:Parameter Name="Custno" Type="Int32" />
                        <asp:Parameter Name="original_Orderno" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_Orderdate" />
                        <asp:Parameter Name="original_Custno" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>

    </center>
    <br />
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

        #ShipInfo{
            font-family: "Montserrat";
            
        }
    </style>

    </asp:Content>
<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="About" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        #tables{
            color: #fff;
            background-color: #30a5ff;
        }       
    </style>
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <asp:DetailsView CssClass="features-table" ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" InsertVisible="False" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            <asp:BoundField DataField="MaDanhMuc" HeaderText="MaDanhMuc" SortExpression="MaDanhMuc" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                           <PagerStyle BackColor="#6699ff" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFFCC" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([TenSP], [MoTa], [MaDanhMuc], [Gia]) VALUES (@TenSP, @MoTa, @MaDanhMuc, @Gia)" SelectCommand="SELECT [MaSP], [TenSP], [MoTa], [MaDanhMuc], [Gia] FROM [SanPham] ORDER BY [MaSP]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [MoTa] = @MoTa, [MaDanhMuc] = @MaDanhMuc, [Gia] = @Gia WHERE [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="Gia" Type="Decimal" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    </asp:Content>

<%@ Page Title="Hóa Đơn Chi Tiết" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadonchitiet.aspx.cs" Inherits="hoadonchitiet" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <asp:DetailsView CssClass="features-table" ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaHD,MaSP" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
            <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
            <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
         <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#6699ff" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFFCC" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaHD], [MaSP], [Soluong], [DonGia]) VALUES (@MaHD, @MaSP, @Soluong, @DonGia)" SelectCommand="SELECT [MaHD], [MaSP], [Soluong], [DonGia] FROM [ChiTietHoaDon] ORDER BY [MaHD]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [Soluong] = @Soluong, [DonGia] = @DonGia WHERE [MaHD] = @MaHD AND [MaSP] = @MaSP">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
            <asp:Parameter Name="Soluong" Type="Int16" />
            <asp:Parameter Name="DonGia" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Soluong" Type="Int16" />
            <asp:Parameter Name="DonGia" Type="Decimal" />
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="MaSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>


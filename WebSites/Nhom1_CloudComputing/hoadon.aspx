<%@ Page Title="Hóa Đơn" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="hoadon" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    <asp:DetailsView CssClass="features-table" ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaHD" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" InsertVisible="False" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
            <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
            <asp:BoundField DataField="NgayGiao" HeaderText="NgayGiao" SortExpression="NgayGiao" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:CheckBoxField DataField="TrangThai" HeaderText="TrangThai" SortExpression="TrangThai" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#6699ff" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFFCC" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai]) VALUES (@MaKH, @NgayBan, @NgayGiao, @DiaChi, @TrangThai)" SelectCommand="SELECT [MaHD], [MaKH], [NgayBan], [NgayGiao], [DiaChi], [TrangThai] FROM [HoaDon] ORDER BY [MaHD]" UpdateCommand="UPDATE [HoaDon] SET [MaKH] = @MaKH, [NgayBan] = @NgayBan, [NgayGiao] = @NgayGiao, [DiaChi] = @DiaChi, [TrangThai] = @TrangThai WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayBan" Type="DateTime" />
            <asp:Parameter Name="NgayGiao" Type="DateTime" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="NgayBan" Type="DateTime" />
            <asp:Parameter Name="NgayGiao" Type="DateTime" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="MaHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>


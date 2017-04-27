<%@ Page Title="Loại Sản Phẩm" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaisanpham.aspx.cs" Inherits="loaisanpham" %>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <style>
        #tables{
            /*aa*/
            color: #fff;
            background-color: #30a5ff;
        }       
    </style>
    <hgroup class="title" >
        <h1><%: Title %></h1>
    </hgroup>
    <asp:DetailsView CssClass="features-table" ID="DetailsView1" runat="server" Height="50px" Width="500px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaLoai" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" InsertVisible="False" ReadOnly="True" SortExpression="MaLoai" />
            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
            <asp:BoundField DataField="LoaiCha" HeaderText="LoaiCha" SortExpression="LoaiCha" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
                                     <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle  BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#6699ff" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFFCC" ForeColor="#330099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [MaLoai] = @MaLoai" InsertCommand="INSERT INTO [LoaiSP] ([TenLoai], [LoaiCha]) VALUES (@TenLoai, @LoaiCha)" SelectCommand="SELECT [MaLoai], [TenLoai], [LoaiCha] FROM [LoaiSP] ORDER BY [MaLoai]" UpdateCommand="UPDATE [LoaiSP] SET [TenLoai] = @TenLoai, [LoaiCha] = @LoaiCha WHERE [MaLoai] = @MaLoai">
        <DeleteParameters>
            <asp:Parameter Name="MaLoai" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="LoaiCha" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="LoaiCha" Type="Int32" />
            <asp:Parameter Name="MaLoai" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>


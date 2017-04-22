<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>&nbsp;&nbsp;&nbsp; DAS.</h1>
                <h2>Chúng tôi chuyên cung cấp các mặt hàng công nghệ nhằm phục vụ nhu cầu đời sống của mỗi gia đình.</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Quyền Lợi khi sử dụng dịch vụ của chúng tôi:</h3>
    <ol class="round">
        <li class="one">
            <h5>Luôn mới nhất</h5>
           Mọi sản phẩm của chúng tôi đều là những sản phẩm mới nhất, tốt nhất từ các hãng sản xuất hàng đầu thế giới!
        </li>
        <li class="two">
            <h5>Dịch vụ bảo hành tốt nhất</h5>
            Chúng tôi chăm sóc khách hàng thông qua các quy trình chuẩn đảm bảo quyền lợi cho mỗi khách hàng
        </li>
        <li class="three">
            <h5>Giá cả hợp lí</h5>
            Sản Phảm của chúng tôi được niêm yết với giá của nhà sản xuất không phá giá thị trường
        </li>
    </ol>
</asp:Content>
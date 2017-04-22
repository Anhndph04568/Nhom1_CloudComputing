<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>
    <section class="contact">
        <header>
            <h3>About Us:</h3>
        </header>
        <p>
            <span class="label">Công Ty TNHH DAS - </span>
            <span>Chuyên cung cấp thiết bị công nghệ cho cuộc sống</span>
        </p>
    </section>
    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Hotline:</span>
            <span>0169996669</span>
        </p>
        <p>
            <span class="label">Chăm sóc khách hàng:</span>
            <span>18009669</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:upportDAS@gmail.com">SupportDAS@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:MarketingDAS@gmail.com">MarketingDAS@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Đóng Góp ý kiến:</span>
            <span><a href="mailto:DongGopDAS@gmail.com">DongGopDAS@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
           Tòa nhà Machinco, P. Q., 444 Hoàng Hoa Thám, Thụy Khuê, Tây Hồ, Hanoi, Việt Nam
        </p>
        <p>
            Bản đồ
        </p>
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7447.437531995535!2d105.813571!3d21.043936!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9d6c7bcf00cfdf0a!2zVMOyYSBuaMOgIE1hY2hpbmNv!5e0!3m2!1svi!2sus!4v1492263228132" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>
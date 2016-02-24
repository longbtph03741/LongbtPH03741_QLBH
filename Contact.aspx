<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Liên hệ với chúng tôi qua</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại</h3>
        </header>
        <p>
            <span class="label">Giờ hành chính:</span>
            <span>122.555.0120</span>
        </p>
        <p>
            <span class="label">Sau giờ hành chính</span>
            <span>115.555.2399</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ :</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing :</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">Cộng tác :</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ</h3>
        </header>
        <p>
            Hà Đông<br />
            07, tổ 20, Hà Nội
        </p>
    </section>
</asp:Content>
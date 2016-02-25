<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Trang liên hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện thoại:</h3>
        </header>
        <p>
            <span class="label">Số chính:</span>
            <span>0168.9922.530</span>
        </p>
        <p>
            <span class="label">Số phụ:</span>
            <span>0987.888.999</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Hòm thư:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:Support@example.com">Hotrokhachhang@ph03487.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@ph03487.com</a></span>
        </p>
        <p>
            <span class="label">Chung:</span>
            <span><a href="mailto:General@example.com">nguyenvanthucfpt@ph03487.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Hà Nội<br />
            Mộc Hoàn Đình - Vân Côn - Hoài Đức - Hà Nội
        </p>
    </section>
</asp:Content>
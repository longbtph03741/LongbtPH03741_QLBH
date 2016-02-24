<%@ Page Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="RegisterExternalLogin.aspx.vb" Inherits="Account_RegisterExternalLogin" %>
<asp:Content ContentPlaceHolderID="MainContent" Runat="Server">
    <hgroup class="title">
          <h1>Đăng nhập với  <%: ProviderDisplayName %> tài khoản của bạn</h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>

    
    <asp:ModelErrorMessage runat="server" ModelStateKey="Provider" CssClass="field-validation-error" />
    

    <asp:PlaceHolder runat="server" ID="userNameForm">
       <fieldset>
            <legend>Association Form</legend>
            <p>
               Bạn đã được chứng thực <strong><%: ProviderDisplayName %></strong> với chúng tôii
                <strong><%: ProviderUserName %></strong>. Vui lòng nhập tên người dùng dưới đây cho các trang web hiện tại và nhấp vào nút Đăng nhập.
            </p>
            <ol>
                <li class="email">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="userName">Tài khoản</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName"
                        Display="Dynamic" ErrorMessage="User name is required" ValidationGroup="NewUser" />
                    
                    <asp:ModelErrorMessage ID="ModelErrorMessage1" runat="server" ModelStateKey="UserName" CssClass="field-validation-error" />
                    
                </li>
            </ol>
            <asp:Button ID="Button1" runat="server" Text="Log in" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
</asp:Content>

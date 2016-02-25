<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OpenAuthProviders.ascx.cs" Inherits="Account_OpenAuthProviders" %>

<fieldset class="open-auth-providers">
    <legend>Log in using another service</legend>
    
    <asp:ListView runat="server" ID="providerDetails" ItemType="Microsoft.AspNet.Membership.OpenAuth.ProviderDetails"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <button type="submit" name="provider" value="<%#: Item.ProviderName %>"
                title="Log in using your <%#: Item.ProviderDisplayName %> account.">
                <%#: Item.ProviderDisplayName %>
            </button>
        </ItemTemplate>
    
        <EmptyDataTemplate>
            <div class="message-info">
                <p>Không có dịch vụ chứng thực bên ngoài. Xem <a href="http://google.com">trang này</a> để biết chi tiết về thiết lập ứng dụng Database này để hỗ trợ đăng nhập thông qua các dịch vụ bên ngoài.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</fieldset>
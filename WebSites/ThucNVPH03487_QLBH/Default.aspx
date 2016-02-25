<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                
                <h2>Database quản lý bán hàng của ThucNVPH03487</h2>
            </hgroup>
            <p>
                Để tìm hiểu thêm về database, ghé thăm <a href="http://google.com" title="Google.com Website">http://google.com</a>. 
                Các tính năng của trang <mark>Videos, hướng dẫn, và mẫu</mark> Để giúp bạn biết dõ hơn về database.
                Nếu bạn có bất kỳ câu hỏi nào về database, ghé thăm 
                <a href="http://google.com" title="Google.com">Trang của Google</a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Đây là database của tôi:</h3>
    <ol class="round">
        <li class="one">
            <h5>Bảng khách hàng</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="147px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                    <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ThucNVPH03487_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Khach_Hang] ([TenKH], [MaKH], [Email], [SDT], [DiaChi]) VALUES (@TenKH, @MaKH, @Email, @SDT, @DiaChi)" SelectCommand="SELECT [TenKH], [MaKH], [Email], [SDT], [DiaChi] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [TenKH] = @TenKH, [Email] = @Email, [SDT] = @SDT, [DiaChi] = @DiaChi WHERE [MaKH] = @MaKH">
                <DeleteParameters>
                    <asp:Parameter Name="MaKH" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenKH" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SDT" Type="Int32" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Bảng loại sản phẩm</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLoaiSP" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" ReadOnly="True" SortExpression="MaLoaiSP" />
                    <asp:BoundField DataField="TenLoaiSP" HeaderText="TenLoaiSP" SortExpression="TenLoaiSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ThucNVPH03487_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Loai_San_Pham] WHERE [MaLoaiSP] = @MaLoaiSP" InsertCommand="INSERT INTO [Loai_San_Pham] ([MaLoaiSP], [TenLoaiSP]) VALUES (@MaLoaiSP, @TenLoaiSP)" SelectCommand="SELECT [MaLoaiSP], [TenLoaiSP] FROM [Loai_San_Pham]" UpdateCommand="UPDATE [Loai_San_Pham] SET [TenLoaiSP] = @TenLoaiSP WHERE [MaLoaiSP] = @MaLoaiSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                    <asp:Parameter Name="TenLoaiSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenLoaiSP" Type="String" />
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </li>
        <li class="three">
            <h5>Bảng sản phẩm</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                    <asp:BoundField DataField="MaLoaiSP" HeaderText="MaLoaiSP" SortExpression="MaLoaiSP" />
                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                    <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP" />
                    <asp:BoundField DataField="MotaSP" HeaderText="MotaSP" SortExpression="MotaSP" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ThucNVPH03487_QLBHConnectionString %>" DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [San_Pham] ([MaSP], [MaLoaiSP], [TenSP], [GiaSP], [MotaSP]) VALUES (@MaSP, @MaLoaiSP, @TenSP, @GiaSP, @MotaSP)" SelectCommand="SELECT [MaSP], [MaLoaiSP], [TenSP], [GiaSP], [MotaSP] FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [MaLoaiSP] = @MaLoaiSP, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [MotaSP] = @MotaSP WHERE [MaSP] = @MaSP">
                <DeleteParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSP" Type="String" />
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaSP" Type="Decimal" />
                    <asp:Parameter Name="MotaSP" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MaLoaiSP" Type="String" />
                    <asp:Parameter Name="TenSP" Type="String" />
                    <asp:Parameter Name="GiaSP" Type="Decimal" />
                    <asp:Parameter Name="MotaSP" Type="String" />
                    <asp:Parameter Name="MaSP" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Bảng hóa đơn</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                    <asp:BoundField DataField="GiaSp" HeaderText="GiaSp" SortExpression="GiaSp" />
                    <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ThucNVPH03487_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Hoa_Don] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [Hoa_Don] ([MaHD], [GiaSp], [MaKH]) VALUES (@MaHD, @GiaSp, @MaKH)" SelectCommand="SELECT [MaHD], [GiaSp], [MaKH] FROM [Hoa_Don]" UpdateCommand="UPDATE [Hoa_Don] SET [GiaSp] = @GiaSp, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
                <DeleteParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaHD" Type="String" />
                    <asp:Parameter Name="GiaSp" Type="Decimal" />
                    <asp:Parameter Name="MaKH" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="GiaSp" Type="Decimal" />
                    <asp:Parameter Name="MaKH" Type="String" />
                    <asp:Parameter Name="MaHD" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Bảng chi tiết hóa đơn</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                    <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                    <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ThucNVPH03487_QLBHConnectionString %>" SelectCommand="SELECT [MaHD], [MaSP], [SoLuong], [Gia] FROM [CT_Hoa_Don]"></asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
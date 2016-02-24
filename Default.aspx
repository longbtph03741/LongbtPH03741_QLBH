<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                
                <h2>Trang chủ</h2>
            </hgroup>
            <p>
                Chúng tôi có những bộ sách hay và đảm bảo là sách thật!
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Cơ sở dữ liệu</h3>
    <ol class="round">
        <li class="one">
            <h5>Khách hàng<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_khach_hang" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Ma_khach_hang" HeaderText="Ma_khach_hang" ReadOnly="True" SortExpression="Ma_khach_hang" />
                    <asp:BoundField DataField="Ho_ten" HeaderText="Ho_ten" SortExpression="Ho_ten" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Dia_chi" HeaderText="Dia_chi" SortExpression="Dia_chi" />
                    <asp:BoundField DataField="So_dien_thoai" HeaderText="So_dien_thoai" SortExpression="So_dien_thoai" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Longbtph03741_QLBHConnectionString %>" DeleteCommand="DELETE FROM [Khach_hang] WHERE [Ma_khach_hang] = @original_Ma_khach_hang AND [Ho_ten] = @original_Ho_ten AND [email] = @original_email AND [Dia_chi] = @original_Dia_chi AND [So_dien_thoai] = @original_So_dien_thoai" InsertCommand="INSERT INTO [Khach_hang] ([Ma_khach_hang], [Ho_ten], [email], [Dia_chi], [So_dien_thoai]) VALUES (@Ma_khach_hang, @Ho_ten, @email, @Dia_chi, @So_dien_thoai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_khach_hang], [Ho_ten], [email], [Dia_chi], [So_dien_thoai] FROM [Khach_hang]" UpdateCommand="UPDATE [Khach_hang] SET [Ho_ten] = @Ho_ten, [email] = @email, [Dia_chi] = @Dia_chi, [So_dien_thoai] = @So_dien_thoai WHERE [Ma_khach_hang] = @original_Ma_khach_hang AND [Ho_ten] = @original_Ho_ten AND [email] = @original_email AND [Dia_chi] = @original_Dia_chi AND [So_dien_thoai] = @original_So_dien_thoai">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="original_Ho_ten" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_Dia_chi" Type="String" />
                        <asp:Parameter Name="original_So_dien_thoai" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="Ho_ten" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Dia_chi" Type="String" />
                        <asp:Parameter Name="So_dien_thoai" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ho_ten" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="Dia_chi" Type="String" />
                        <asp:Parameter Name="So_dien_thoai" Type="Int32" />
                        <asp:Parameter Name="original_Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="original_Ho_ten" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_Dia_chi" Type="String" />
                        <asp:Parameter Name="original_So_dien_thoai" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
             <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
        <li class="two">
            <h5> Hóa đơn 
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_hoa_don" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Ma_khach_hang" HeaderText="Ma_khach_hang" SortExpression="Ma_khach_hang" />
                        <asp:BoundField DataField="Ma_hoa_don" HeaderText="Ma_hoa_don" ReadOnly="True" SortExpression="Ma_hoa_don" />
                        <asp:BoundField DataField="Ngay_mua" HeaderText="Ngay_mua" SortExpression="Ngay_mua" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Longbtph03741_QLBHConnectionString2 %>" DeleteCommand="DELETE FROM [Hoa_don] WHERE [Ma_hoa_don] = @original_Ma_hoa_don AND [Ma_khach_hang] = @original_Ma_khach_hang AND [Ngay_mua] = @original_Ngay_mua" InsertCommand="INSERT INTO [Hoa_don] ([Ma_khach_hang], [Ma_hoa_don], [Ngay_mua]) VALUES (@Ma_khach_hang, @Ma_hoa_don, @Ngay_mua)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_khach_hang], [Ma_hoa_don], [Ngay_mua] FROM [Hoa_don]" UpdateCommand="UPDATE [Hoa_don] SET [Ma_khach_hang] = @Ma_khach_hang, [Ngay_mua] = @Ngay_mua WHERE [Ma_hoa_don] = @original_Ma_hoa_don AND [Ma_khach_hang] = @original_Ma_khach_hang AND [Ngay_mua] = @original_Ngay_mua">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Ma_hoa_don" Type="String" />
                        <asp:Parameter Name="original_Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="original_Ngay_mua" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="Ma_hoa_don" Type="String" />
                        <asp:Parameter Name="Ngay_mua" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="Ngay_mua" Type="DateTime" />
                        <asp:Parameter Name="original_Ma_hoa_don" Type="String" />
                        <asp:Parameter Name="original_Ma_khach_hang" Type="String" />
                        <asp:Parameter Name="original_Ngay_mua" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
             <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
        <li class="three">
            <h5>Sản phẩm 
                <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_san_pham" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Ma_san_pham" HeaderText="Ma_san_pham" ReadOnly="True" SortExpression="Ma_san_pham" />
                        <asp:BoundField DataField="Ma_loai_san_pham" HeaderText="Ma_loai_san_pham" SortExpression="Ma_loai_san_pham" />
                        <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
                        <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                        <asp:BoundField DataField="Mo_ta" HeaderText="Mo_ta" SortExpression="Mo_ta" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Longbtph03741_QLBHConnectionString3 %>" DeleteCommand="DELETE FROM [San_pham] WHERE [Ma_san_pham] = @original_Ma_san_pham AND [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND [Ten] = @original_Ten AND [Gia] = @original_Gia AND [Mo_ta] = @original_Mo_ta" InsertCommand="INSERT INTO [San_pham] ([Ma_san_pham], [Ma_loai_san_pham], [Ten], [Gia], [Mo_ta]) VALUES (@Ma_san_pham, @Ma_loai_san_pham, @Ten, @Gia, @Mo_ta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_san_pham], [Ma_loai_san_pham], [Ten], [Gia], [Mo_ta] FROM [San_pham]" UpdateCommand="UPDATE [San_pham] SET [Ma_loai_san_pham] = @Ma_loai_san_pham, [Ten] = @Ten, [Gia] = @Gia, [Mo_ta] = @Mo_ta WHERE [Ma_san_pham] = @original_Ma_san_pham AND [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND [Ten] = @original_Ten AND [Gia] = @original_Gia AND [Mo_ta] = @original_Mo_ta">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Ma_san_pham" Type="String" />
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Ten" Type="String" />
                        <asp:Parameter Name="original_Gia" Type="Decimal" />
                        <asp:Parameter Name="original_Mo_ta" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ma_san_pham" Type="String" />
                        <asp:Parameter Name="Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="Ten" Type="String" />
                        <asp:Parameter Name="Gia" Type="Decimal" />
                        <asp:Parameter Name="Mo_ta" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="Ten" Type="String" />
                        <asp:Parameter Name="Gia" Type="Decimal" />
                        <asp:Parameter Name="Mo_ta" Type="String" />
                        <asp:Parameter Name="original_Ma_san_pham" Type="String" />
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Ten" Type="String" />
                        <asp:Parameter Name="original_Gia" Type="Decimal" />
                        <asp:Parameter Name="original_Mo_ta" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
          
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
        <li class="four">
            <h5>Loại Sản phẩm 
                <asp:DetailsView ID="DetailsView4" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_loai_san_pham" DataSourceID="SqlDataSource4" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Ma_loai_san_pham" HeaderText="Ma_loai_san_pham" ReadOnly="True" SortExpression="Ma_loai_san_pham" />
                        <asp:BoundField DataField="Loai" HeaderText="Loai" SortExpression="Loai" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Longbtph03741_QLBHConnectionString4 %>" DeleteCommand="DELETE FROM [Bangloaisanpham] WHERE [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND (([Loai] = @original_Loai) OR ([Loai] IS NULL AND @original_Loai IS NULL))" InsertCommand="INSERT INTO [Bangloaisanpham] ([Ma_loai_san_pham], [Loai]) VALUES (@Ma_loai_san_pham, @Loai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_loai_san_pham], [Loai] FROM [Bangloaisanpham]" UpdateCommand="UPDATE [Bangloaisanpham] SET [Loai] = @Loai WHERE [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND (([Loai] = @original_Loai) OR ([Loai] IS NULL AND @original_Loai IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Loai" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="Loai" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Loai" Type="String" />
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Loai" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h5>
          
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
          <li class="five">
            <h5>Chi tiết hóa đơn<asp:DetailsView ID="DetailsView5" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ma_loai_san_pham" DataSourceID="SqlDataSource6" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="Ma_loai_san_pham" HeaderText="Ma_loai_san_pham" ReadOnly="True" SortExpression="Ma_loai_san_pham" />
                    <asp:BoundField DataField="Loai" HeaderText="Loai" SortExpression="Loai" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Longbtph03741_QLBHConnectionString5 %>" DeleteCommand="DELETE FROM [Bangloaisanpham] WHERE [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND (([Loai] = @original_Loai) OR ([Loai] IS NULL AND @original_Loai IS NULL))" InsertCommand="INSERT INTO [Bangloaisanpham] ([Ma_loai_san_pham], [Loai]) VALUES (@Ma_loai_san_pham, @Loai)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Ma_loai_san_pham], [Loai] FROM [Bangloaisanpham]" UpdateCommand="UPDATE [Bangloaisanpham] SET [Loai] = @Loai WHERE [Ma_loai_san_pham] = @original_Ma_loai_san_pham AND (([Loai] = @original_Loai) OR ([Loai] IS NULL AND @original_Loai IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Loai" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="Loai" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Loai" Type="String" />
                        <asp:Parameter Name="original_Ma_loai_san_pham" Type="String" />
                        <asp:Parameter Name="original_Loai" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
              </h5>
          
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>

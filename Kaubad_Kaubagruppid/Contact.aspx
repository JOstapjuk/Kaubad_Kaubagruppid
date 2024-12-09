<%@ Page Title="Lisa uus kaup" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Kaubad_Kaubagruppid.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1_kaubad" DefaultMode="Insert" Height="50px" Width="446px">
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:TemplateField HeaderText="Kauba grupid" SortExpression="kaubagrupi_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1_kaubagrupid" DataTextField="grupinimi" DataValueField="id" SelectedValue='<%# Bind("kaubagrupi_id") %>' Width="186px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1_kaubagrupid" runat="server" ConnectionString="<%$ ConnectionStrings:KaubadConnectionString2 %>" DeleteCommand="DELETE FROM [kaubagrupid] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubagrupid] ([grupinimi]) VALUES (@grupinimi)" SelectCommand="SELECT * FROM [kaubagrupid]" UpdateCommand="UPDATE [kaubagrupid] SET [grupinimi] = @grupinimi WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="grupinimi" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("kaubagrupi_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1_kaubad" runat="server" ConnectionString="<%$ ConnectionStrings:KaubadConnectionString2 %>" DeleteCommand="DELETE FROM [kaubad] WHERE [id] = @id" InsertCommand="INSERT INTO [kaubad] ([nimetus], [kaubagrupi_id], [hind]) VALUES (@nimetus, @kaubagrupi_id, @hind)" SelectCommand="SELECT * FROM [kaubad]" UpdateCommand="UPDATE [kaubad] SET [nimetus] = @nimetus, [kaubagrupi_id] = @kaubagrupi_id, [hind] = @hind WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="kaubagrupi_id" Type="Int32" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </h2>
        

        
    </main>
</asp:Content>

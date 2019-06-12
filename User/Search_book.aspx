<%@ Page Title="" Language="C#" MasterPageFile="~/User/M2.master" AutoEventWireup="true" CodeFile="Search_book.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-container" style="width="50%">
        <form id="Form1" runat="server">
        
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="form-field">
                      <asp:DropDownList ID="DropDownList1" CssClass="custom-select" 
            runat="server" DataSourceID="SqlDataSource2" DataTextField="pub_name" 
            DataValueField="pub_id" AutoPostBack="True">
                      </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You Must Select Dropdown" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>

                      </div>
                      <div class="form-field">
                      <asp:DropDownList ID="DropDownList2" CssClass="custom-select" runat="server" 
                          DataSourceID="SqlDataSource3" DataTextField="book_name" 
                          DataValueField="book_id">
                      </asp:DropDownList>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Select Dropdown" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [book_name], [book_id] FROM [book_mster] WHERE ([pub_id] = @pub_id)">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="DropDownList1" Name="pub_id" 
                                  PropertyName="SelectedValue" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT * FROM [pub_mster]">
                      </asp:SqlDataSource>
                      </div>
       </ContentTemplate>
        </asp:UpdatePanel>
        <div class="form-field">
        <asp:Label ID="Label3" runat="server" Text=""  ForeColor="Red" ></asp:Label>
        <asp:Label ID="Label1" runat="server" Text=""  ForeColor="Blue" Visible="false"></asp:Label>
        </div> 
        <br />
        <asp:Button ID="btn_search" class="btn" runat="server" Text="Search Book" 
                onclick="btn_search_Click" />
        <asp:Button ID="btn_demand" class="btn" runat="server" Text="Demand" 
                Visible="false" onclick="btn_demand_Click" />
        </form>
 </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/M2.master" AutoEventWireup="true" CodeFile="issued_book.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-container" style="width="50%">
        <form id="Form1" runat="server">
            <br />
        <asp:Panel ID="Panel1" runat="server">
        <div class="table-responsive">
           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table class="table table-striped jambo_table bulk_action dataTable">
                            <thead>
                                <tr>
                                    <th>
                                        Enrollment Number
                                    </th>
                                    <th>
                                        Semester
                                    </th>
                                    <th>
                                        Book Name
                                    </th>
                                    <th>
                                        Publication Name
                                    </th>
                                    <th>
                                        Issue Date
                                    </th>
                                    <th>
                                        Return Date
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("enrollment_no") %>
                            </td>
                            <td>
                                <%#Eval("sem") %>
                            </td>
                            <td>
                                <%#Eval("book_name") %>
                            </td>
                            <td>
                                <%#Eval("pub_name") %>
                            </td>
                            <td>
                                <%#Eval("issue_date") %>
                            </td>
                            <td>
                                <%#Eval("return_date") %>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody> </table>
                    </FooterTemplate>
                </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT i.enrollment_no, i.sem, b.book_name, p.pub_name, i.issue_date, i.return_date FROM issue_mster AS i INNER JOIN book_mster AS b ON i.book_id = b.book_id INNER JOIN pub_mster AS p ON i.pub_id = p.pub_id WHERE (i.enrollment_no = @enrollment_no)">
                <SelectParameters>
                    <asp:SessionParameter Name="enrollment_no" SessionField="enrollment_no" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        </asp:Panel>
        </form>
</div>
</asp:Content>

 <%--<asp:GridView ID="GridView1" runat="server" class="table" EmptyDataText="YOu Dont" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="enrollment_no" HeaderText="Enrollment Number" 
                        SortExpression="enrollment_no" />
                    <asp:BoundField DataField="sem" HeaderText="Semster" SortExpression="sem" />
                   <asp:BoundField DataField="book_name" HeaderText="book_name" 
                        SortExpression="book_name" />
                    <asp:BoundField DataField="pub_name" HeaderText="Publicatio name" 
                        SortExpression="pub_name" />
                    <asp:BoundField DataField="issue_date" HeaderText="Issue_date" 
                        SortExpression="issue_date" />
                    <asp:BoundField DataField="return_date" HeaderText="Return_date" 
                        SortExpression="return_date" />
                </Columns>
            </asp:GridView>--%>
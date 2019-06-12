<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="book_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
            <h2>
                Book Report</h2>
            <div class="clearfix">
            </div>
        </div>
        <div class="x_content">
            <div class="table-responsive">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table class="table table-striped jambo_table bulk_action dataTable">
                            <thead>
                                <tr>
                                    <th>
                                        Book ID
                                    </th>
                                    <th>
                                        Book Name
                                    </th>
                                    <th>
                                        Publication Name
                                    </th>
                                    <th>
                                        Edition
                                    </th>
                                    <th>
                                        Author Name
                                    </th>
                                    <th>
                                        Semester
                                    </th>
                                    <th>
                                        Subject
                                    </th>
                                    <th>
                                        Quantity
                                    </th>
                                    <th>
                                        Price
                                    </th>
                                    <th>
                                        Total Amount
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("book_id") %>
                            </td>
                            <td>
                                <%#Eval("book_name") %>
                            </td>
                            <td>
                                <%#Eval("pub_name") %>
                            </td>
                            <td>
                                <%#Eval("edition") %>
                            </td>
                            <td>
                                <%#Eval("author_name") %>
                            </td>
                            <td>
                                <%#Eval("sem") %>
                            </td>
                            <td>
                                <%#Eval("sub_name") %>
                            </td>
                            <td>
                                <asp:Label ID="lblqty" runat="server" Text=""><%#Eval("qty") %></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblprice" runat="server" Text=""><%#Eval("price") %></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblamt" runat="server" Text=""><%#Eval("total_amt") %></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody> </table>
                    </FooterTemplate>
                </asp:Repeater>
                <%-- <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" 
                          EmptyDataText="There are no data records to display.">
                          <Columns>
                              <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" 
                                  SortExpression="book_id" />
                              <asp:BoundField DataField="book_name" HeaderText="book_name" 
                                  SortExpression="book_name" />
                              <asp:BoundField DataField="pub_id" HeaderText="pub_id" 
                                  SortExpression="pub_id" />
                              <asp:BoundField DataField="edition" HeaderText="edition" 
                                  SortExpression="edition" />
                              <asp:BoundField DataField="author_id" HeaderText="author_id" 
                                  SortExpression="author_id" />
                              <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                              <asp:BoundField DataField="subject" HeaderText="subject" 
                                  SortExpression="subject" />
                              <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                              <asp:BoundField DataField="total_amt" HeaderText="total_amt" 
                                  SortExpression="total_amt" />
                          </Columns>
                      </asp:GridView>--%>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT b.book_id, b.book_name, p.pub_name, b.edition, a.author_name, b.sem, s.sub_name, b.qty, b.price, (b.qty * b.price) as total_amt
                                        FROM book_mster AS b INNER JOIN
                                        pub_mster AS p ON b.pub_id = p.pub_id INNER JOIN
                                        author_mster AS a ON b.author_id = a.author_id inner join subject_mster as s on b.sub_id=s.sub_id order by b.book_id ">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
    </div>
    </form>
</asp:Content>

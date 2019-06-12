<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="panalty_report.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Penalty Report</h2> 
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <div class="table-responsive">
                      <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                            <table class="table table-striped jambo_table bulk_action dataTable">
                                <thead>
                                    <tr>
                                        <th>
                                            Penalty ID
                                        </th>
                                        <th>
                                            Enrollment NO
                                        </th>
                                        <th>
                                            Book Name
                                        </th>
                                        <th>
                                            Penalty Amount
                                        </th>
                                        <th>
                                            Pay Amount
                                        </th>
                                        </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%#Eval("penalty_id") %>
                                </td>
                                <td>
                                    <%#Eval("enrollment_no") %>
                                </td>
                                <td>
                                    <%#Eval("book_name") %>
                                </td>
                                <td>
                                    <%#Eval("p_amount") %>
                                </td>
                                <td>
                                    <%#Eval("pay_amount") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody> </table>
                        </FooterTemplate>
                    </asp:Repeater>
					  <%--<asp:GridView ID="GridView1" runat="server" 
                          class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" 
                          EmptyDataText="There are no data records to display." >
                          <Columns>
                              <asp:BoundField DataField="panalty_id" HeaderText="panalty_id" ReadOnly="True" 
                                  SortExpression="panalty_id" />
                              <asp:BoundField DataField="enrollment_no" HeaderText="enrollment_no" 
                                  SortExpression="enrollment_no" />
                              <asp:BoundField DataField="book_id" HeaderText="book_id" 
                                  SortExpression="book_id" />
                              <asp:BoundField DataField="p_amount" HeaderText="p_amount" 
                                  SortExpression="p_amount" />
                              <asp:BoundField DataField="pay_amount" HeaderText="pay_amount" 
                                  SortExpression="pay_amount" />
                          </Columns>
                      </asp:GridView>--%>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                          SelectCommand="select p.penalty_id,p.enrollment_no,b.book_name,p.p_amount,p.pay_amount from penalty_mster as p inner join book_mster as b on p.book_id=b.book_id order by p.penalty_id">
                      </asp:SqlDataSource>
                      
					</div> 
                  </div>
                </div>
        </div>
    </form>
</asp:Content>


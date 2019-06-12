<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="ud_author.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Author Report</h2> 
                    <div class="clearfix"></div>
                  </div>
                  
                  <div class="x_content">
                  <div class="table-responsive">
                      <asp:GridView ID="GridView1" runat="server" 
                          class="table table-striped jambo_table bulk_action dataTable" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" 
                          EmptyDataText="There are no data records to display." 
                          DataKeyNames="author_id">
                          <Columns>
                              <asp:BoundField DataField="author_id" HeaderText="Author Id" ReadOnly="True" 
                                  SortExpression="author_id" InsertVisible="False" />
                              <asp:BoundField DataField="author_name" HeaderText="Author Name" 
                                  SortExpression="author_name" />
                              <asp:CommandField ShowEditButton="True" HeaderText="Update" />
                              <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" />
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [author_id], [author_name] FROM [author_mster] order by author_id" 
                          DeleteCommand="DELETE FROM author_mster WHERE author_id = @author_id" 
                          
                          
                          UpdateCommand="UPDATE author_mster SET author_name =@author_name where author_id=@author_id">
                          <DeleteParameters>
                              <asp:Parameter Name="author_id" />
                          </DeleteParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="author_name" />
                              <asp:Parameter Name="author_id" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                  </div> 
                  </div>
                </div>
        </div>
    </form>

</asp:Content>


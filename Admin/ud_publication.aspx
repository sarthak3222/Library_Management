<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true" CodeFile="ud_publication.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Publication Report</h2> 
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  <div class="table-responsive">
                      <asp:GridView ID="GridView2" runat="server" 
                          class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" 
                          DataSourceID="SqlDataSource1" 
                          EmptyDataText="There are no data records to display." CellPadding="0" 
                          AllowSorting="True" DataKeyNames="pub_id" >
                          <Columns>
                              <asp:BoundField DataField="pub_id" HeaderText="Publication Id" ReadOnly="True" 
                                  SortExpression="pub_id" />
                              <asp:BoundField DataField="pub_name" HeaderText="Publicaton Name" 
                                  SortExpression="pub_name" />
                              <asp:CommandField ShowEditButton="True" HeaderText="Update" />
                              <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT [pub_id], [pub_name] FROM [pub_mster] order by pub_id" 
                          
                          UpdateCommand="UPDATE pub_mster SET pub_name = @pub_name where pub_id=@pub_id" 
                          DeleteCommand="DELETE FROM pub_mster where pub_id=@pub_id">
                          <DeleteParameters>
                              <asp:Parameter Name="pub_id" />
                          </DeleteParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="pub_name" />
                              <asp:Parameter Name="pub_id" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                      
					</div> 
                  </div>
                </div>
        </div>
    </form>
</asp:Content>


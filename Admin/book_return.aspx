<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/M1.master" AutoEventWireup="true"
    CodeFile="book_return.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Book Return
                    </h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                    </ul>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="x_content">
                    <br />
                    <form id="Form1" class="form-horizontal form-label-left" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 420px">
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                        Enrollment Number<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <asp:TextBox ID="txt_enroll" class="form-control col-md-7 col-xs-12" runat="server"
                                            MaxLength="15" placeholder="Enter Enrollment Number" required=""></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You Must Enter Enrollment Number"
                                            ControlToValidate="txt_enroll" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="form-group">
                        <div>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                                Text=""></asp:Label>
                            <asp:Label ID="Label3" runat="server" ForeColor="#006699"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="btn_submit" class="btn btn-success" runat="server" Text="Submit"
                                OnClick="btn_submit_Click" />
                        </div>
                    </div>
                    <b><u>
                        <p>
                            * Field Is Mandatory
                        </p>
                    </u></b>
                    <asp:Panel ID="Panel1" runat="server" Visible="false">
                        <div class="x_title">
                            <h2>
                                <br />
                                Book Details
                            </h2>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Student Name<span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_sname" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Book Name<span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="DropDownList1" class="form-control col-md-7 col-xs-12" runat="server"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Days <span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_days" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Issue Date <span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_issuedate" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Penalty Status <span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_panalty" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_return" class="btn btn-success" runat="server" Text="Return"
                                    OnClick="btn_return_Click" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_panalty" class="btn btn-success" runat="server" Text="Penalty"
                                    OnClick="btn_panalty_Click" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"
                                    Text=""></asp:Label>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server">
                        <div class="x_title">
                            <h2>
                                <br />
                                Penalty
                            </h2>
                        </div>
                        <br />
                        <br />
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Student Name<span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_psname" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Book Name<span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_pbname" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Penalty Amount<span>:</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:Label ID="lbl_pamount" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"
                                    Width="1px"></asp:Label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                                Pay Amount<span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txt_pamount" class="form-control col-md-7 col-xs-12" runat="server" AutoPostBack="true"
                                    placeholder="Enter Penalty Amount"  
                                    ontextchanged="txt_pamount_TextChanged1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button ID="btn_pay" class="btn btn-success" runat="server" Text="Pay" OnClick="btn_pay_Click" />
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
                    <div class="x_title">
                            <h2>
                                <br />
                                Demand Report
                            </h2>
                        </div>
                        <br />
                        <br />
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="False" EmptyDataText="There are no data records to display.">
                                <Columns>
                                    <asp:BoundField DataField="demand_id" HeaderText="demand_id" ReadOnly="True" SortExpression="demand_id" />
                                    <asp:BoundField DataField="enrollment_no" HeaderText="enrollment_no" SortExpression="enrollment_no" />
                                  <%--  <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                  --%>  <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                    <asp:BoundField DataField="demand_date" HeaderText="demand_date" SortExpression="demand_date" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </asp:Panel>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

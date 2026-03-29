<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs"
Inherits="WebApplication1.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Users</title>
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <style>
      body {
        background-color: #1a1a1a;
        color: #eee;
        font-family: "Segoe UI", sans-serif;
      }

      .grid-table {
        width: 100%;
        border-collapse: collapse;
      }
      .grid-table th {
        background-color: #1e1e1e !important;
        color: #555 !important;
        font-size: 11px;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        border: none !important;
        padding: 12px 16px !important;
      }
      .grid-table td {
        background-color: #1e1e1e !important;
        color: #eee !important;
        border: none !important;
        border-bottom: 1px solid #2a2a2a !important;
        padding: 12px 16px !important;
        font-size: 13px;
      }
      .grid-table tbody tr:hover td {
        background-color: #252525 !important;
        color: #e8b84b !important;
      }
      .grid-table a {
        color: #aaa !important;
        font-size: 11px;
        text-decoration: none;
        border: 1px solid #333;
        padding: 3px 10px;
        border-radius: 4px;
        margin-right: 4px;
        transition: all 0.2s;
      }
      .grid-table a:hover {
        color: #e8b84b !important;
        border-color: #e8b84b !important;
      }

      .table-card {
        background-color: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        overflow: hidden;
      }
      .form-card {
        background-color: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        padding: 32px;
        margin-top: 32px;
      }
      .form-label {
        font-size: 11px;
        font-weight: 600;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        color: #555;
        margin-bottom: 6px;
        display: block;
      }
      .form-card input {
        width: 100%;
        background-color: #111 !important;
        border: 1px solid #333 !important;
        border-radius: 6px !important;
        color: #eee !important;
        padding: 8px 12px !important;
        font-size: 13px;
        margin-bottom: 16px;
        outline: none;
        transition: border-color 0.2s;
      }
      .form-card input:focus {
        border-color: #e8b84b !important;
      }

      .btn-insert {
        background-color: #d0182e;
        color: #fff;
        border: none;
        padding: 8px 24px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: 0.06em;
        text-transform: uppercase;
        cursor: pointer;
        transition: background-color 0.2s;
        text-decoration: none;
      }
      .btn-insert:hover {
        background-color: #b5152a;
        color: #fff;
      }
      .btn-cancel {
        background-color: transparent;
        color: #555;
        border: 1px solid #333;
        padding: 8px 24px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: 0.06em;
        text-transform: uppercase;
        cursor: pointer;
        transition: all 0.2s;
        text-decoration: none;
        margin-left: 8px;
      }
      .btn-cancel:hover {
        border-color: #555;
        color: #eee;
      }
      .btn-new {
        display: inline-block;
        background-color: #d0182e;
        color: #fff !important;
        border: none;
        padding: 8px 20px;
        border-radius: 6px;
        font-size: 12px;
        font-weight: 600;
        letter-spacing: 0.06em;
        text-transform: uppercase;
        text-decoration: none !important;
        transition: background-color 0.2s;
      }
      .btn-new:hover {
        background-color: #b5152a;
      }

      .page-header {
        border-left: 4px solid #d0182e;
        padding-left: 18px;
        margin-bottom: 40px;
      }
      .page-header h1 {
        font-size: 36px;
        font-weight: 900;
        letter-spacing: 0.06em;
        color: #fff;
      }
      .page-header p {
        color: #555;
        font-size: 13px;
        margin-top: 4px;
      }
      .section-divider {
        display: flex;
        align-items: center;
        gap: 16px;
        margin-bottom: 24px;
      }
      .section-divider h2 {
        font-size: 18px;
        font-weight: 700;
        letter-spacing: 0.06em;
        color: #fff;
        white-space: nowrap;
        text-transform: uppercase;
      }
      .section-divider .line {
        flex: 1;
        height: 1px;
        background: #2a2a2a;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <nav
        style="
          background-color: #1a1a1a;
          border-bottom: 2px solid #d0182e;
          padding: 0 40px;
          display: flex;
          align-items: center;
          height: 54px;
        "
      >
        <a
          href="Homepage.aspx"
          style="
            font-weight: 900;
            font-size: 20px;
            color: #fff;
            letter-spacing: 0.05em;
            text-decoration: none;
            white-space: nowrap;
            margin-right: 40px;
          "
          >KUMARI CINEMAS</a
        >

        <ul
          style="
            list-style: none;
            display: flex;
            align-items: center;
            gap: 24px;
            margin: 0;
            padding: 20%;
            flex-wrap: wrap;
          "
        >
          <li>
            <a
              href="UserDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Users</a
            >
          </li>
          <li>
            <a
              href="TheatreHallDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Theatres</a
            >
          </li>
          <li>
            <a
              href="ShowTimeDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Shows</a
            >
          </li>
          <li>
            <a
              href="MovieDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Movies</a
            >
          </li>
          <li>
            <a
              href="TicketDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Tickets</a
            >
          </li>
          <li>
            <a
              href="UserTicket.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >User Tickets</a
            >
          </li>
          <li>
            <a
              href="TheatreHallMovie.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Hall Movies</a
            >
          </li>
          <li>
            <a
              href="MovieOccupancy.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color = '#E8B84B'"
              onmouseout="this.style.color = '#aaa'"
              >Occupancy</a
            >
          </li>
        </ul>
      </nav>

      <div style="max-width: 1280px; margin: 0 auto; padding: 48px 32px">
        <div class="page-header">
          <h1>Users</h1>
        </div>

        <div class="section-divider">
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="USER_ID"
            DataSourceID="SqlDataSource1"
            CssClass="grid-table"
            GridLines="None"
            Width="100%"
          >
            <Columns>
              <asp:BoundField
                DataField="USER_ID"
                HeaderText="USER_ID"
                ReadOnly="True"
                SortExpression="USER_ID"
              />
              <asp:BoundField
                DataField="USERNAME"
                HeaderText="USERNAME"
                SortExpression="USERNAME"
              />
              <asp:BoundField
                DataField="DATE_OF_BIRTH"
                HeaderText="DATE_OF_BIRTH"
                SortExpression="DATE_OF_BIRTH"
              />
              <asp:BoundField
                DataField="EMAIL"
                HeaderText="EMAIL"
                SortExpression="EMAIL"
              />
              <asp:BoundField
                DataField="PHONE"
                HeaderText="PHONE"
                SortExpression="PHONE"
              />
              <asp:BoundField
                DataField="ADDRESS"
                HeaderText="ADDRESS"
                SortExpression="ADDRESS"
              />
              <asp:CommandField
                ShowEditButton="True"
                ShowDeleteButton="True"
                EditText="Edit"
                DeleteText="Delete"
                ButtonType="Link"
                HeaderText="Actions"
              />
            </Columns>
          </asp:GridView>
        </div>

        <asp:SqlDataSource
          ID="SqlDataSource1"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          DeleteCommand='DELETE FROM "USERS" WHERE "USER_ID" = :USER_ID'
          InsertCommand='INSERT INTO "USERS" ("USER_ID", "USERNAME", "DATE_OF_BIRTH", "EMAIL", "PHONE", "ADDRESS") VALUES (:USER_ID, :USERNAME, :DATE_OF_BIRTH, :EMAIL, :PHONE, :ADDRESS)'
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand='SELECT * FROM "USERS"'
          UpdateCommand='UPDATE "USERS" SET "USERNAME" = :USERNAME, "DATE_OF_BIRTH" = :DATE_OF_BIRTH, "EMAIL" = :EMAIL, "PHONE" = :PHONE, "ADDRESS" = :ADDRESS WHERE "USER_ID" = :USER_ID'
        >
          <DeleteParameters>
            <asp:Parameter Name="USER_ID" Type="String" />
          </DeleteParameters>
          <InsertParameters>
            <asp:Parameter Name="USER_ID" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="PHONE" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
          </InsertParameters>
          <UpdateParameters>
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="DATE_OF_BIRTH" Type="DateTime" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="PHONE" Type="String" />
            <asp:Parameter Name="ADDRESS" Type="String" />
            <asp:Parameter Name="USER_ID" Type="String" />
          </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView
          ID="FormView1"
          runat="server"
          DataKeyNames="USER_ID"
          DataSourceID="SqlDataSource1"
        >
          <EditItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Edit User</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">User ID</span>
                  <asp:Label
                    ID="USER_IDLabel1"
                    runat="server"
                    Text='<%# Eval("USER_ID") %>'
                    style="
                      color: #555;
                      font-size: 13px;
                      display: block;
                      padding: 8px 0;
                    "
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Username</span>
                  <asp:TextBox
                    ID="USERNAMETextBox"
                    runat="server"
                    Text='<%# Bind("USERNAME") %>'
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Date of Birth</span>
                  <asp:TextBox
                    ID="DATE_OF_BIRTHTextBox"
                    runat="server"
                    Text='<%# Bind("DATE_OF_BIRTH") %>'
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Email</span>
                  <asp:TextBox
                    ID="EMAILTextBox"
                    runat="server"
                    Text='<%# Bind("EMAIL") %>'
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Phone</span>
                  <asp:TextBox
                    ID="PHONETextBox"
                    runat="server"
                    Text='<%# Bind("PHONE") %>'
                  />
                </div>
                <div class="col-md-4">
                  <span class="form-label">Address</span>
                  <asp:TextBox
                    ID="ADDRESSTextBox"
                    runat="server"
                    Text='<%# Bind("ADDRESS") %>'
                  />
                </div>
              </div>
              <div style="margin-top: 8px">
                <asp:LinkButton
                  ID="UpdateButton"
                  runat="server"
                  CausesValidation="True"
                  CommandName="Update"
                  Text="Update User"
                  CssClass="btn-insert"
                />
                <asp:LinkButton
                  ID="UpdateCancelButton"
                  runat="server"
                  CausesValidation="False"
                  CommandName="Cancel"
                  Text="Cancel"
                  CssClass="btn-cancel"
                />
              </div>
            </div>
          </EditItemTemplate>
          <InsertItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Add New User</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">User ID</span>
                  <asp:TextBox
                    ID="USER_IDTextBox"
                    runat="server"
                    Text='<%# Bind("USER_ID") %>'
                    placeholder="e.g. U001"
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Username</span>
                  <asp:TextBox
                    ID="USERNAMETextBox"
                    runat="server"
                    Text='<%# Bind("USERNAME") %>'
                    placeholder="Full name"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Date of Birth</span>
                  <asp:TextBox
                    ID="DATE_OF_BIRTHTextBox"
                    runat="server"
                    Text='<%# Bind("DATE_OF_BIRTH") %>'
                    TextMode="Date"
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Email</span>
                  <asp:TextBox
                    ID="EMAILTextBox"
                    runat="server"
                    Text='<%# Bind("EMAIL") %>'
                    placeholder="email@example.com"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Phone</span>
                  <asp:TextBox
                    ID="PHONETextBox"
                    runat="server"
                    Text='<%# Bind("PHONE") %>'
                    placeholder="98XXXXXXXX"
                  />
                </div>
                <div class="col-md-4">
                  <span class="form-label">Address</span>
                  <asp:TextBox
                    ID="ADDRESSTextBox"
                    runat="server"
                    Text='<%# Bind("ADDRESS") %>'
                    placeholder="Street, City"
                  />
                </div>
              </div>
              <div style="margin-top: 8px">
                <asp:LinkButton
                  ID="InsertButton"
                  runat="server"
                  CausesValidation="True"
                  CommandName="Insert"
                  Text="Insert User"
                  CssClass="btn-insert"
                />
                <asp:LinkButton
                  ID="InsertCancelButton"
                  runat="server"
                  CausesValidation="False"
                  CommandName="Cancel"
                  Text="Cancel"
                  CssClass="btn-cancel"
                />
              </div>
            </div>
          </InsertItemTemplate>
          <ItemTemplate>
            &nbsp;<asp:LinkButton
              ID="NewButton"
              runat="server"
              CausesValidation="False"
              CommandName="New"
              Text="Insert New User"
              CssClass="btn-new"
            />
          </ItemTemplate>
        </asp:FormView>
      </div>
    </form>
  </body>
</html>

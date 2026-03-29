<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="ShowtimeDetails.aspx.cs" Inherits="WebApplication1.ShowtimeDetails"
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Shows</title>
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
        padding: 8px 10px !important;
        font-size: 13px;
        vertical-align: middle !important;
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

      .grid-table input[type="text"],
      .grid-table input[type="datetime-local"],
      .grid-table select {
        background-color: #111 !important;
        border: 1px solid #444 !important;
        border-radius: 4px !important;
        color: #eee !important;
        padding: 4px 8px !important;
        font-size: 12px !important;
        width: 100% !important;
        box-sizing: border-box !important;
        outline: none !important;
      }
      .grid-table input[type="text"]:focus,
      .grid-table input[type="datetime-local"]:focus,
      .grid-table select:focus {
        border-color: #e8b84b !important;
      }
      .grid-table select option {
        background-color: #111;
        color: #eee;
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
      .form-card input,
      .form-card select {
        width: 100%;
        background-color: #111 !important;
        border: 1px solid #333 !important;
        border-radius: 6px !important;
        color: #eee !important;
        padding: 8px 12px !important;
        font-size: 13px;
        margin-bottom: 16px;
        outline: none;
        box-sizing: border-box;
        transition: border-color 0.2s;
      }
      .form-card input:focus,
      .form-card select:focus {
        border-color: #e8b84b !important;
      }
      .form-card select option {
        background-color: #111;
        color: #eee;
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
          >KUMARI CINEMAS</a>

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
            <a href="UserDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Users</a>
          </li>
          <li>
            <a href="TheatreHallDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Theatres</a>
          </li>
          <li>
            <a href="ShowTimeDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Shows</a>
          </li>
          <li>
            <a href="MovieDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Movies</a>
          </li>
          <li>
            <a href="TicketDetails.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Tickets</a>
          </li>
          <li>
            <a href="UserTicket.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">User Tickets</a>
          </li>
          <li>
            <a href="TheatreHallMovie.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Hall Movies</a>
          </li>
          <li>
            <a href="MovieOccupancy.aspx"
              style="color: #aaa; font-size: 13px; text-decoration: none"
              onmouseover="this.style.color='#E8B84B'"
              onmouseout="this.style.color='#aaa'">Occupancy</a>
          </li>
        </ul>
      </nav>

      <div style="max-width: 1280px; margin: 0 auto; padding: 48px 32px">
        <div class="page-header">
          <h1>Shows</h1>
        </div>

        <div class="section-divider">
          <h2>All Shows</h2>
          <div class="line"></div>
        </div>

        <asp:SqlDataSource
          ID="SqlDataSourceHalls"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand='SELECT "THEATRE_HALL_ID", "HALL_NAME" FROM "THEATRE_HALL"'>
        </asp:SqlDataSource>

        <asp:SqlDataSource
          ID="SqlDataSourceMovies"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand='SELECT "MOVIE_ID", "TITLE" FROM "MOVIES"'>
        </asp:SqlDataSource>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="SHOW_ID"
            DataSourceID="SqlDataSource1"
            CssClass="grid-table"
            GridLines="None"
            Width="100%"
            OnRowDataBound="GridView1_RowDataBound"
          >
            <Columns>

              <asp:TemplateField HeaderText="SHOW ID">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SHOW_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SHOW_ID") %>'
                    style="color:#555; font-size:12px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="SHOW DATETIME">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SHOW_DATETIME") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="SHOW_DATETIMETextBox" runat="server"
                    Text='<%# Bind("SHOW_DATETIME") %>'
                    TextMode="DateTimeLocal"
                    style="min-width:160px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="SHOW TYPE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SHOW_TYPE") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:DropDownList ID="SHOW_TYPEDropDown" runat="server"
                    SelectedValue='<%# Bind("SHOW_TYPE") %>'>
                    <asp:ListItem Value="normal">normal</asp:ListItem>
                    <asp:ListItem Value="weekend">weekend</asp:ListItem>
                    <asp:ListItem Value="release week">release week</asp:ListItem>
                  </asp:DropDownList>
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="BASE PRICE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("BASE_PRICE") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="BASE_PRICETextBox" runat="server"
                    Text='<%# Bind("BASE_PRICE") %>'
                    style="min-width:70px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="HOLIDAY CHARGE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("HOLIDAY_EXTRACHARGE") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="HOLIDAY_EXTRACHARGETextBox" runat="server"
                    Text='<%# Bind("HOLIDAY_EXTRACHARGE") %>'
                    style="min-width:70px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="RELEASE WK CHARGE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("RELEASE_WEEK_EXTRACHARGE") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="RELEASE_WEEK_EXTRACHARGETextBox" runat="server"
                    Text='<%# Bind("RELEASE_WEEK_EXTRACHARGE") %>'
                    style="min-width:70px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="HALL">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("T_H_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:DropDownList ID="T_H_IDDropDown" runat="server">
                  </asp:DropDownList>
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="MOVIE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("M_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:DropDownList ID="M_IDDropDown" runat="server">
                  </asp:DropDownList>
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="ACTIONS">
                <ItemTemplate>
                  <asp:LinkButton runat="server" CommandName="Edit"
                    Text="Edit" CausesValidation="false" />
                  <asp:LinkButton runat="server" CommandName="Delete"
                    Text="Delete" CausesValidation="false"
                    OnClientClick="return confirm('Delete this show?');" />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:LinkButton runat="server" CommandName="Update"
                    Text="Save" CausesValidation="true" />
                  <asp:LinkButton runat="server" CommandName="Cancel"
                    Text="Cancel" CausesValidation="false" />
                </EditItemTemplate>
              </asp:TemplateField>

            </Columns>
          </asp:GridView>
        </div>

        <asp:SqlDataSource
          ID="SqlDataSource1"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand='SELECT * FROM "SHOWS"'
          UpdateCommand='UPDATE "SHOWS" SET "SHOW_DATETIME"=:SHOW_DATETIME, "SHOW_TYPE"=:SHOW_TYPE, "BASE_PRICE"=:BASE_PRICE, "HOLIDAY_EXTRACHARGE"=:HOLIDAY_EXTRACHARGE, "RELEASE_WEEK_EXTRACHARGE"=:RELEASE_WEEK_EXTRACHARGE, "T_H_ID"=:T_H_ID, "M_ID"=:M_ID WHERE "SHOW_ID"=:SHOW_ID'
          DeleteCommand='DELETE FROM "SHOWS" WHERE "SHOW_ID"=:SHOW_ID'
        >
          <DeleteParameters>
            <asp:Parameter Name="SHOW_ID" Type="String" />
          </DeleteParameters>
          <UpdateParameters>
            <asp:Parameter Name="SHOW_DATETIME" Type="DateTime" />
            <asp:Parameter Name="SHOW_TYPE" Type="String" />
            <asp:Parameter Name="BASE_PRICE" Type="Decimal" />
            <asp:Parameter Name="HOLIDAY_EXTRACHARGE" Type="Decimal" />
            <asp:Parameter Name="RELEASE_WEEK_EXTRACHARGE" Type="Decimal" />
            <asp:Parameter Name="T_H_ID" Type="String" />
            <asp:Parameter Name="M_ID" Type="String" />
            <asp:Parameter Name="SHOW_ID" Type="String" />
          </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView
          ID="FormView1"
          runat="server"
          DataKeyNames="SHOW_ID"
          DataSourceID="SqlDataSource1"
          Width="100%"
          DefaultMode="ReadOnly"
          OnItemInserting="FormView1_ItemInserting"
        >
          <ItemTemplate>
            <div style="margin-top: 24px">
              <asp:LinkButton
                ID="NewButton"
                runat="server"
                CausesValidation="False"
                CommandName="New"
                Text="+ Add Show"
                CssClass="btn-new"
              />
            </div>
          </ItemTemplate>

          <InsertItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Add New Show</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">Show ID</span>
                  <asp:TextBox
                    ID="SHOW_IDTextBox"
                    runat="server"
                    Text='<%# Bind("SHOW_ID") %>'
                    placeholder="e.g. SH001"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Show Type</span>
                  <asp:DropDownList
                    ID="DropDownList1"
                    runat="server"
                    SelectedValue='<%# Bind("SHOW_TYPE") %>'
                  >
                    <asp:ListItem Value="normal">normal</asp:ListItem>
                    <asp:ListItem Value="weekend">weekend</asp:ListItem>
                    <asp:ListItem Value="release week">release week</asp:ListItem>
                  </asp:DropDownList>
                </div>
                <div class="col-md-2">
                  <span class="form-label">Base Price</span>
                  <asp:TextBox
                    ID="BASE_PRICETextBox"
                    runat="server"
                    Text='<%# Bind("BASE_PRICE") %>'
                    placeholder="0.00"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Holiday Charge</span>
                  <asp:TextBox
                    ID="HOLIDAY_EXTRACHARGETextBox"
                    runat="server"
                    Text='<%# Bind("HOLIDAY_EXTRACHARGE") %>'
                    placeholder="0.00"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Release Week Charge</span>
                  <asp:TextBox
                    ID="RELEASE_WEEK_EXTRACHARGETextBox"
                    runat="server"
                    Text='<%# Bind("RELEASE_WEEK_EXTRACHARGE") %>'
                    placeholder="0.00"
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Theatre Hall</span>
                  <asp:DropDownList
                    ID="DropDownList2"
                    runat="server"
                    SelectedValue='<%# Bind("T_H_ID") %>'
                    DataSourceID="SqlDataSource2"
                    DataTextField="HALL_NAME"
                    DataValueField="THEATRE_HALL_ID"
                  >
                  </asp:DropDownList>
                  <asp:SqlDataSource
                    ID="SqlDataSource2"
                    runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                    SelectCommand='SELECT "THEATRE_HALL_ID", "HALL_NAME" FROM "THEATRE_HALL"'
                  >
                  </asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                  <span class="form-label">Movie</span>
                  <asp:DropDownList
                    ID="DropDownList3"
                    runat="server"
                    SelectedValue='<%# Bind("M_ID") %>'
                    DataSourceID="SqlDataSource3"
                    DataTextField="TITLE"
                    DataValueField="MOVIE_ID"
                  >
                  </asp:DropDownList>
                  <asp:SqlDataSource
                    ID="SqlDataSource3"
                    runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                    SelectCommand='SELECT "MOVIE_ID", "TITLE" FROM "MOVIES"'
                  >
                  </asp:SqlDataSource>
                </div>
              </div>
              <div style="margin-top: 8px">
                <asp:LinkButton
                  ID="InsertButton"
                  runat="server"
                  CausesValidation="True"
                  CommandName="Insert"
                  Text="Insert Show"
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
        </asp:FormView>

      </div>
    </form>
  </body>
</html>

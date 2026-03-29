<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs"
Inherits="WebApplication1.MovieDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Movies</title>
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
          <h1>Movies</h1>
        </div>

        <div class="section-divider">
          <h2>All Movies</h2>
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="MOVIE_ID"
            DataSourceID="SqlDataSource1"
            CssClass="grid-table"
            GridLines="None"
            Width="100%"
          >
            <Columns>
              <asp:BoundField
                DataField="MOVIE_ID"
                HeaderText="MOVIE_ID"
                ReadOnly="True"
                SortExpression="MOVIE_ID"
              />
              <asp:BoundField
                DataField="TITLE"
                HeaderText="TITLE"
                SortExpression="TITLE"
              />
              <asp:BoundField
                DataField="DURATION_IN_MINS"
                HeaderText="DURATION_IN_MINS"
                SortExpression="DURATION_IN_MINS"
              />
              <asp:BoundField
                DataField="LANGUAGES"
                HeaderText="LANGUAGES"
                SortExpression="LANGUAGES"
              />
              <asp:BoundField
                DataField="GENRE"
                HeaderText="GENRE"
                SortExpression="GENRE"
              />
              <asp:BoundField
                DataField="RELEASE_DATE"
                HeaderText="RELEASE_DATE"
                SortExpression="RELEASE_DATE"
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
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand='SELECT * FROM "MOVIES"'
          InsertCommand='INSERT INTO "MOVIES" ("MOVIE_ID", "TITLE", "DURATION_IN_MINS", "LANGUAGES", "GENRE", "RELEASE_DATE") VALUES (:MOVIE_ID, :TITLE, :DURATION_IN_MINS, :LANGUAGES, :GENRE, :RELEASE_DATE)'
          UpdateCommand='UPDATE "MOVIES" SET "TITLE"=:TITLE, "DURATION_IN_MINS"=:DURATION_IN_MINS, "LANGUAGES"=:LANGUAGES, "GENRE"=:GENRE, "RELEASE_DATE"=:RELEASE_DATE WHERE "MOVIE_ID"=:MOVIE_ID'
          DeleteCommand='DELETE FROM "MOVIES" WHERE "MOVIE_ID"=:MOVIE_ID'
        >
          <DeleteParameters>
            <asp:Parameter Name="MOVIE_ID" Type="String" />
          </DeleteParameters>
          <InsertParameters>
            <asp:Parameter Name="MOVIE_ID" Type="String" />
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="DURATION_IN_MINS" Type="Decimal" />
            <asp:Parameter Name="LANGUAGES" Type="String" />
            <asp:Parameter Name="GENRE" Type="String" />
            <asp:Parameter Name="RELEASE_DATE" Type="DateTime" />
          </InsertParameters>
          <UpdateParameters>
            <asp:Parameter Name="TITLE" Type="String" />
            <asp:Parameter Name="DURATION_IN_MINS" Type="Decimal" />
            <asp:Parameter Name="LANGUAGES" Type="String" />
            <asp:Parameter Name="GENRE" Type="String" />
            <asp:Parameter Name="RELEASE_DATE" Type="DateTime" />
            <asp:Parameter Name="MOVIE_ID" Type="String" />
          </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView
          ID="FormView1"
          runat="server"
          DataKeyNames="MOVIE_ID"
          DataSourceID="SqlDataSource1"
        >
          <ItemTemplate>
            <div style="margin-top: 24px">
              <asp:LinkButton
                ID="NewButton"
                runat="server"
                CausesValidation="False"
                CommandName="New"
                Text="+ Add Movie"
                CssClass="btn-new"
              />
            </div>
          </ItemTemplate>

          <InsertItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Add New Movie</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">Movie ID</span>
                  <asp:TextBox
                    ID="MOVIE_IDTextBox"
                    runat="server"
                    Text='<%# Bind("MOVIE_ID") %>'
                    placeholder="e.g. M001"
                  />
                </div>
                <div class="col-md-4">
                  <span class="form-label">Title</span>
                  <asp:TextBox
                    ID="TITLETextBox"
                    runat="server"
                    Text='<%# Bind("TITLE") %>'
                    placeholder="Movie title"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Duration (mins)</span>
                  <asp:TextBox
                    ID="DURATION_IN_MINSTextBox"
                    runat="server"
                    Text='<%# Bind("DURATION_IN_MINS") %>'
                    placeholder="e.g. 120"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Language</span>
                  <asp:TextBox
                    ID="LANGUAGESTextBox"
                    runat="server"
                    Text='<%# Bind("LANGUAGES") %>'
                    placeholder="e.g. English"
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Genre</span>
                  <asp:TextBox
                    ID="GENRETextBox"
                    runat="server"
                    Text='<%# Bind("GENRE") %>'
                    placeholder="e.g. Action"
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Release Date</span>
                  <asp:TextBox
                    ID="RELEASE_DATETextBox"
                    runat="server"
                    Text='<%# Bind("RELEASE_DATE") %>'
                    TextMode="Date"
                  />
                </div>
              </div>
              <div style="margin-top: 8px">
                <asp:LinkButton
                  ID="InsertButton"
                  runat="server"
                  CausesValidation="True"
                  CommandName="Insert"
                  Text="Insert Movie"
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

          <EditItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Edit Movie</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">Movie ID</span>
                  <asp:Label
                    ID="MOVIE_IDLabel1"
                    runat="server"
                    Text='<%# Eval("MOVIE_ID") %>'
                    style="
                      color: #555;
                      font-size: 13px;
                      display: block;
                      padding: 8px 0;
                    "
                  />
                </div>
                <div class="col-md-4">
                  <span class="form-label">Title</span>
                  <asp:TextBox
                    ID="TITLETextBox"
                    runat="server"
                    Text='<%# Bind("TITLE") %>'
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Duration (mins)</span>
                  <asp:TextBox
                    ID="DURATION_IN_MINSTextBox"
                    runat="server"
                    Text='<%# Bind("DURATION_IN_MINS") %>'
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Language</span>
                  <asp:TextBox
                    ID="LANGUAGESTextBox"
                    runat="server"
                    Text='<%# Bind("LANGUAGES") %>'
                  />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Genre</span>
                  <asp:TextBox
                    ID="GENRETextBox"
                    runat="server"
                    Text='<%# Bind("GENRE") %>'
                  />
                </div>
                <div class="col-md-3">
                  <span class="form-label">Release Date</span>
                  <asp:TextBox
                    ID="RELEASE_DATETextBox"
                    runat="server"
                    Text='<%# Bind("RELEASE_DATE") %>'
                    TextMode="Date"
                  />
                </div>
              </div>
              <div style="margin-top: 8px">
                <asp:LinkButton
                  ID="UpdateButton"
                  runat="server"
                  CausesValidation="True"
                  CommandName="Update"
                  Text="Update Movie"
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
        </asp:FormView>
      </div>
    </form>
  </body>
</html>

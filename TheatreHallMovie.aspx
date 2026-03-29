<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="TheatreHallMovie.aspx.cs"
Inherits="WebApplication1.TheatreHallMovie" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Hall Movies</title>
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

      .table-card {
        background-color: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        overflow: hidden;
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

      .filter-bar {
        background-color: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        padding: 20px 24px;
        margin-bottom: 24px;
        display: flex;
        align-items: center;
        gap: 16px;
      }
      .filter-label {
        font-size: 11px;
        font-weight: 600;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        color: #555;
        white-space: nowrap;
      }
      .styled-dropdown {
        background-color: #111;
        border: 1px solid #333;
        border-radius: 6px;
        color: #eee;
        padding: 8px 14px;
        font-size: 13px;
        outline: none;
        transition: border-color 0.2s;
        min-width: 260px;
      }
      .styled-dropdown:focus {
        border-color: #e8b84b;
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
          <h1>Hall Movies</h1>
        </div>

        <div class="filter-bar">
          <span class="filter-label">Select Hall</span>
          <asp:DropDownList
            ID="DropDownList1"
            runat="server"
            AutoPostBack="True"
            DataSourceID="SqlDataSource1"
            DataTextField="HALL_NAME"
            DataValueField="THEATRE_HALL_ID"
            CssClass="styled-dropdown"
          >
          </asp:DropDownList>
          <asp:SqlDataSource
            ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
            SelectCommand='SELECT "THEATRE_HALL_ID", "HALL_NAME" FROM "THEATRE_HALL"'
          >
          </asp:SqlDataSource>
        </div>

        <div class="section-divider">
          <h2>Shows &amp; Movies</h2>
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="HALL_NAME,MOVIE_ID,SHOW_ID"
            DataSourceID="SqlDataSource2"
            CssClass="grid-table"
            GridLines="None"
            Width="100%"
          >
            <Columns>
              <asp:BoundField
                DataField="THEATRE_NAME"
                HeaderText="THEATRE_NAME"
                SortExpression="THEATRE_NAME"
              />
              <asp:BoundField
                DataField="ADDRESS"
                HeaderText="ADDRESS"
                SortExpression="ADDRESS"
              />
              <asp:BoundField
                DataField="HALL_NAME"
                HeaderText="HALL_NAME"
                ReadOnly="True"
                SortExpression="HALL_NAME"
              />
              <asp:BoundField
                DataField="HALL_CAPACITY"
                HeaderText="HALL_CAPACITY"
                SortExpression="HALL_CAPACITY"
              />
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
              <asp:BoundField
                DataField="SHOW_ID"
                HeaderText="SHOW_ID"
                ReadOnly="True"
                SortExpression="SHOW_ID"
              />
              <asp:BoundField
                DataField="SHOW_DATETIME"
                HeaderText="SHOW_DATETIME"
                SortExpression="SHOW_DATETIME"
              />
              <asp:BoundField
                DataField="SHOW_TYPE"
                HeaderText="SHOW_TYPE"
                SortExpression="SHOW_TYPE"
              />
              <asp:BoundField
                DataField="BASE_PRICE"
                HeaderText="BASE_PRICE"
                SortExpression="BASE_PRICE"
              />
              <asp:BoundField
                DataField="HOLIDAY_EXTRACHARGE"
                HeaderText="HOLIDAY_EXTRACHARGE"
                SortExpression="HOLIDAY_EXTRACHARGE"
              />
              <asp:BoundField
                DataField="RELEASE_WEEK_EXTRACHARGE"
                HeaderText="RELEASE_WEEK_EXTRACHARGE"
                SortExpression="RELEASE_WEEK_EXTRACHARGE"
              />
            </Columns>
          </asp:GridView>
        </div>

        <asp:SqlDataSource
          ID="SqlDataSource2"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand="SELECT
    tr.theatre_name,
    tr.address,
    th.hall_name,
    th.hall_capacity,
    m.movie_id,
    m.title,
    m.duration_in_mins,
    m.languages,
    m.genre,
    m.release_date,
    s.show_id,
    s.show_datetime,
    s.show_type,
    s.base_price,
    s.holiday_extracharge,
    s.release_week_extracharge
FROM shows s
JOIN theatre_hall th ON s.t_h_id = th.theatre_hall_id
JOIN theatres tr ON th.t_id = tr.theatre_id
JOIN movies m ON s.m_id = m.movie_id
WHERE th.theatre_hall_id = :TheatreHallID
ORDER BY s.show_datetime"
        >
          <SelectParameters>
            <asp:ControlParameter
              ControlID="DropDownList1"
              Name="TheatreHallID"
              PropertyName="SelectedValue"
            />
          </SelectParameters>
        </asp:SqlDataSource>
      </div>
    </form>
  </body>
</html>

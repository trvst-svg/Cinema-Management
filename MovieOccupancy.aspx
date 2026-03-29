<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="MovieOccupancy.aspx.cs"
Inherits="WebApplication1.MovieTheatreHallOccupancyPerformer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Movie Occupancy</title>
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <style>
      body {
        background-color: #1a1a1a;
        color: #eee;
        font-family: "Segoe UI", sans-serif;
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

      .occ-table {
        width: 100%;
        border-collapse: collapse;
      }
      .occ-table th {
        background-color: #1e1e1e !important;
        color: #555 !important;
        font-size: 11px;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        border: none !important;
        padding: 12px 16px !important;
      }
      .occ-table td {
        background-color: #1e1e1e !important;
        color: #eee !important;
        border: none !important;
        border-bottom: 1px solid #2a2a2a !important;
        padding: 12px 16px !important;
        font-size: 13px;
      }
      .occ-table tbody tr:hover td {
        background-color: #252525 !important;
        color: #e8b84b !important;
      }

      .rank-1 {
        color: #ffd700 !important;
        font-weight: 700;
        font-size: 15px;
      }
      .rank-2 {
        color: #c0c0c0 !important;
        font-weight: 700;
      }
      .rank-3 {
        color: #cd7f32 !important;
        font-weight: 700;
      }

      .occ-bar-wrap {
        background: #2a2a2a;
        border-radius: 99px;
        height: 6px;
        width: 100px;
        display: inline-block;
        vertical-align: middle;
        margin-left: 8px;
      }
      .occ-bar-fill {
        background: linear-gradient(90deg, #d0182e, #e8b84b);
        border-radius: 99px;
        height: 6px;
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
          <h1>Occupancy Performer</h1>
        </div>
        <div class="filter-bar">
          <span class="filter-label">Select Movie</span>
          <asp:DropDownList
            ID="DropDownList1"
            runat="server"
            AutoPostBack="True"
            DataSourceID="SqlDataSource1"
            DataTextField="TITLE"
            DataValueField="MOVIE_ID"
          >
          </asp:DropDownList>
          <asp:SqlDataSource
            ID="SqlDataSource1"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
            SelectCommand='SELECT "MOVIE_ID", "TITLE" FROM "MOVIES"'
          ></asp:SqlDataSource>
        </div>

        <div class="section-divider">
          <h2>Top 3 Halls</h2>
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataSourceID="SqlDataSource2"
            DataKeyNames="HALL_NAME"
          >
            <Columns>
              <asp:BoundField
                DataField="THEATRE_NAME"
                HeaderText="THEATRE_NAME"
                SortExpression="THEATRE_NAME"
              />
              <asp:BoundField
                DataField="THEATRE_ADDRESS"
                HeaderText="THEATRE_ADDRESS"
                SortExpression="THEATRE_ADDRESS"
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
                DataField="TOTAL_PAID_TICKETS"
                HeaderText="TOTAL_PAID_TICKETS"
                SortExpression="TOTAL_PAID_TICKETS"
              />
              <asp:BoundField
                DataField="TOTAL_SHOWS"
                HeaderText="TOTAL_SHOWS"
                SortExpression="TOTAL_SHOWS"
              />
              <asp:BoundField
                DataField="OCCUPANCY_PERCENTAGE"
                HeaderText="OCCUPANCY_PERCENTAGE"
                SortExpression="OCCUPANCY_PERCENTAGE"
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
        m.title,
        m.movie_id,
        tr.theatre_name,
        tr.address,
        th.theatre_hall_id,
        th.hall_name,
        th.hall_capacity,
        COUNT(t.ticket_id) AS tickets_sold,
        ROUND((COUNT(t.ticket_id) / th.hall_capacity) * 100, 2) AS occupancy_percentage,
        RANK() OVER (
            PARTITION BY m.movie_id
            ORDER BY ROUND((COUNT(t.ticket_id) / th.hall_capacity) * 100, 2) DESC
        ) AS occupancy_rank
    FROM tickets t
    JOIN shows s ON t.sh_id = s.show_id
    JOIN movies m ON s.m_id = m.movie_id
    JOIN theatre_hall th ON s.t_h_id = th.theatre_hall_id
    JOIN theatres tr ON th.t_id = tr.theatre_id
    WHERE t.payment_status = 'paid'
    GROUP BY
        m.title,
        m.movie_id,
        tr.theatre_name,
        tr.address,
        th.theatre_hall_id,
        th.hall_name,
        th.hall_capacity"
        >
          <SelectParameters>
            <asp:ControlParameter
              ControlID="DropDownList1"
              Name="movie_id"
              PropertyName="SelectedValue"
            />
          </SelectParameters>
        </asp:SqlDataSource>
      </div>
    </form>
  </body>
</html>

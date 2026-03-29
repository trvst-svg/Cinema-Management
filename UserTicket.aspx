<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserTicket.aspx.cs"
Inherits="WebApplication1.UserTicket" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>User Tickets</title>
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
          <h1>User Tickets</h1>
        </div>

        <div class="filter-bar">
          <span class="filter-label">Select User</span>
          <asp:DropDownList
            ID="DropDownList1"
            runat="server"
            AutoPostBack="True"
            DataSourceID="SqlDataSource2"
            DataTextField="USERNAME"
            DataValueField="USER_ID"
            CssClass="styled-dropdown"
          >
          </asp:DropDownList>
          <asp:SqlDataSource
            ID="SqlDataSource2"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
            SelectCommand='SELECT "USER_ID", "USERNAME" FROM "USERS"'
          >
          </asp:SqlDataSource>
        </div>

        <div class="section-divider">
          <h2>Ticket History</h2>
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="USER_ID,TICKET_ID,HALL_NAME"
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
              <asp:BoundField
                DataField="TICKET_ID"
                HeaderText="TICKET_ID"
                ReadOnly="True"
                SortExpression="TICKET_ID"
              />
              <asp:BoundField
                DataField="PAYMENT_STATUS"
                HeaderText="PAYMENT_STATUS"
                SortExpression="PAYMENT_STATUS"
              />
              <asp:BoundField
                DataField="BOOKING_DATETIME"
                HeaderText="BOOKING_DATETIME"
                SortExpression="BOOKING_DATETIME"
              />
              <asp:BoundField
                DataField="CANCELLATION_DEADLINE"
                HeaderText="CANCELLATION_DEADLINE"
                SortExpression="CANCELLATION_DEADLINE"
              />
              <asp:BoundField
                DataField="AMOUNT_PAID"
                HeaderText="AMOUNT_PAID"
                SortExpression="AMOUNT_PAID"
              />
              <asp:BoundField
                DataField="TITLE"
                HeaderText="TITLE"
                SortExpression="TITLE"
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
                DataField="SEAT_NAME"
                HeaderText="SEAT_NAME"
                SortExpression="SEAT_NAME"
              />
              <asp:BoundField
                DataField="HALL_NAME"
                HeaderText="HALL_NAME"
                ReadOnly="True"
                SortExpression="HALL_NAME"
              />
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
            </Columns>
          </asp:GridView>
        </div>

        <asp:SqlDataSource
          ID="SqlDataSource1"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand="SELECT 
    u.user_id,
    u.username,
    u.email,
    u.phone,
    u.address,
    t.ticket_id,
    t.payment_status,
    t.booking_datetime,
    t.cancellation_deadline,
    t.amount_paid,
    m.title,
    m.languages,
    m.genre,
    s.show_datetime,
    s.show_type,
    s.base_price,
    se.seat_name,
    th.hall_name,
    tr.theatre_name,
    tr.address AS theatre_address
FROM tickets t
JOIN users u ON t.u_id = u.user_id
JOIN shows s ON t.sh_id = s.show_id
JOIN movies m ON s.m_id = m.movie_id
JOIN seats se ON t.se_id = se.seat_id
JOIN theatre_hall th ON se.t_h_id = th.theatre_hall_id
JOIN theatres tr ON th.t_id = tr.theatre_id 
WHERE u.user_id = :UserID
AND t.booking_datetime &gt;= ADD_MONTHS(SYSDATE, -6)
AND t.payment_status = 'paid'
ORDER BY t.booking_datetime DESC"
        >
          <SelectParameters>
            <asp:ControlParameter
              ControlID="DropDownList1"
              Name="UserID"
              PropertyName="SelectedValue"
            />
          </SelectParameters>
        </asp:SqlDataSource>
      </div>
    </form>
  </body>
</html>

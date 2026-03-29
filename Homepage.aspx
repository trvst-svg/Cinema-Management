<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs"
Inherits="WebApplication1.Homepage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Kumari Cinemas</title>
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <style>
      body {
        background-color: #1a1a1a;
        color: #eee;
        font-family: "Segoe UI", sans-serif;
      }

      .stat-card .gridview-wrap table,
      .stat-card .gridview-wrap tr,
      .stat-card .gridview-wrap td,
      .stat-card .gridview-wrap th {
        all: unset;
        display: block;
      }
      .stat-card .gridview-wrap thead {
        display: none !important;
      }
      .stat-card .gridview-wrap td {
        font-size: 40px;
        font-weight: 900;
        color: #fff;
        line-height: 1;
      }

      .stat-card {
        background: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        padding: 20px;
        position: relative;
        overflow: hidden;
        transition:
          border-color 0.25s,
          transform 0.2s;
        flex: 1;
        min-width: 150px;
      }
      .stat-card:hover {
        border-color: #e8b84b;
        transform: translateY(-3px);
      }
      .stat-card::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 3px;
        background: linear-gradient(90deg, #d0182e, #e8b84b);
        opacity: 0;
        transition: opacity 0.25s;
      }
      .stat-card:hover::before {
        opacity: 1;
      }
      .stat-icon {
        font-size: 20px;
        margin-bottom: 10px;
        display: block;
        opacity: 0.7;
      }
      .stat-label {
        font-size: 10px;
        font-weight: 600;
        letter-spacing: 0.12em;
        text-transform: uppercase;
        color: #555;
        margin-bottom: 8px;
      }

      .chart-card {
        background: #1e1e1e;
        border: 1px solid #2a2a2a;
        border-radius: 10px;
        padding: 24px;
      }
      .chart-card h3 {
        font-size: 11px;
        font-weight: 600;
        letter-spacing: 0.1em;
        text-transform: uppercase;
        color: #555;
        margin-bottom: 20px;
      }

      .section-divider {
        display: flex;
        align-items: center;
        gap: 16px;
        margin-bottom: 24px;
        margin-top: 40px;
      }
      .section-divider h2 {
        font-size: 16px;
        font-weight: 700;
        letter-spacing: 0.08em;
        color: #fff;
        white-space: nowrap;
        text-transform: uppercase;
      }
      .section-divider .line {
        flex: 1;
        height: 1px;
        background: #2a2a2a;
      }

      .page-header {
        border-left: 4px solid #d0182e;
        padding-left: 18px;
        margin-bottom: 40px;
      }
      .page-header h1 {
        font-size: 40px;
        font-weight: 900;
        letter-spacing: 0.06em;
        color: #fff;
      }

      .latest-table {
        width: 100%;
        border-collapse: collapse;
      }
      .latest-table th {
        background-color: #1e1e1e !important;
        color: #555 !important;
        font-size: 10px;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        border: none !important;
        padding: 10px 14px !important;
      }
      .latest-table td {
        background-color: #1e1e1e !important;
        color: #eee !important;
        border: none !important;
        border-bottom: 1px solid #2a2a2a !important;
        padding: 10px 14px !important;
        font-size: 12px;
      }
      .latest-table tbody tr:hover td {
        background-color: #252525 !important;
        color: #e8b84b !important;
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
          href="Default.aspx"
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
              href="ShowTimesDetails.aspx"
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
          <h1>SYSTEM DASHBOARD</h1>
        </div>

        <div class="section-divider" style="margin-top: 0">
          <h2>Overview</h2>
          <div class="line"></div>
        </div>

        <div
          style="display: flex; flex-wrap: wrap; gap: 16px; margin-bottom: 40px"
        >
          <div class="stat-card">
            <span class="stat-icon">&#128100;</span>
            <div class="stat-label">Users</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource1"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="USERS" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource1"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(user_id) AS Users FROM users"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#127963;</span>
            <div class="stat-label">Theatres</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView2"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource2"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="THEATRES" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource2"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(theatre_id) AS Theatres FROM theatres"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#127914;</span>
            <div class="stat-label">Halls</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView3"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource3"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="HALLS" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource3"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(theatre_hall_id) AS Halls FROM theatre_hall"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#127916;</span>
            <div class="stat-label">Movies</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView4"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource4"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="MOVIES" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource4"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(movie_id) AS Movies FROM movies"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#128197;</span>
            <div class="stat-label">Shows</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView5"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource5"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="SHOWS" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource5"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(show_id) AS Shows FROM shows"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#128250;</span>
            <div class="stat-label">Seats</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView6"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource6"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="SEATS" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource6"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(SEAT_ID) AS Seats FROM seats"
            >
            </asp:SqlDataSource>
          </div>

          <div class="stat-card">
            <span class="stat-icon">&#127903;</span>
            <div class="stat-label">Tickets</div>
            <div class="gridview-wrap">
              <asp:GridView
                ID="GridView7"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource7"
                ShowHeader="False"
                GridLines="None"
              >
                <Columns><asp:BoundField DataField="TICKETS" /></Columns>
              </asp:GridView>
            </div>
            <asp:SqlDataSource
              ID="SqlDataSource7"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT COUNT(ticket_id) AS Tickets FROM tickets"
            >
            </asp:SqlDataSource>
          </div>
        </div>

        <div class="section-divider">
          <h2>Analytics</h2>
          <div class="line"></div>
        </div>

        <div
          style="
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-bottom: 16px;
          "
        >
          <div class="chart-card">
            <h3>&#127903; Tickets Sold per Movie</h3>
            <canvas id="chartTicketsPerMovie" height="220"></canvas>
          </div>

          <div class="chart-card">
            <h3>&#127914; Occupancy % per Hall</h3>
            <canvas id="chartOccupancyPerHall" height="220"></canvas>
          </div>
        </div>

        <div
          style="
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 16px;
            margin-bottom: 40px;
          "
        >
          <div class="chart-card">
            <h3>&#128100; Bookings per User (Top 10)</h3>
            <canvas id="chartBookingsPerUser" height="220"></canvas>
          </div>

          <div class="chart-card">
            <h3>&#128197; Latest Registered Users</h3>
            <asp:GridView
              ID="GridViewLatestUsers"
              runat="server"
              AutoGenerateColumns="False"
              DataSourceID="SqlDataSourceLatestUsers"
              GridLines="None"
              Width="100%"
              CssClass="latest-table"
            >
              <Columns>
                <asp:BoundField DataField="USERNAME" HeaderText="Username" />
                <asp:BoundField DataField="EMAIL" HeaderText="Email" />
                <asp:BoundField
                  DataField="DATE_OF_BIRTH"
                  HeaderText="Date of Birth"
                />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource
              ID="SqlDataSourceLatestUsers"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
              SelectCommand="SELECT USERNAME, EMAIL, DATE_OF_BIRTH FROM (SELECT USERNAME, EMAIL, DATE_OF_BIRTH FROM USERS ORDER BY USER_ID DESC) WHERE ROWNUM &lt;= 5"
            >
            </asp:SqlDataSource>
          </div>
        </div>


        <asp:SqlDataSource
          ID="SdsTicketsPerMovie"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand="SELECT m.title, COUNT(t.ticket_id) AS ticket_count
                           FROM movies m
                           JOIN shows s ON s.m_id = m.movie_id
                           JOIN tickets t ON t.sh_id = s.show_id
                           WHERE t.payment_status = 'paid'
                           GROUP BY m.title
                           ORDER BY ticket_count DESC"
        >
        </asp:SqlDataSource>

        <asp:SqlDataSource
          ID="SdsOccupancy"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand="SELECT th.hall_name, ROUND((COUNT(t.ticket_id) / (th.hall_capacity * COUNT(DISTINCT s.show_id))) * 100, 1) AS occ_pct
                           FROM theatre_hall th
                           JOIN shows s ON s.t_h_id = th.theatre_hall_id
                           JOIN tickets t ON t.sh_id = s.show_id
                           WHERE t.payment_status = 'paid'
                           GROUP BY th.hall_name, th.hall_capacity
                           ORDER BY occ_pct DESC"
        >
        </asp:SqlDataSource>

        <asp:SqlDataSource
          ID="SdsBookingsPerUser"
          runat="server"
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
          SelectCommand="SELECT * FROM (SELECT u.username, COUNT(t.ticket_id) AS booking_count
                           FROM users u
                           JOIN tickets t ON t.u_id = u.user_id
                           WHERE t.payment_status = 'paid'
                           GROUP BY u.username
                           ORDER BY booking_count DESC) WHERE ROWNUM &lt;= 10"
        >
        </asp:SqlDataSource>

        <script>
            var ticketLabels = [<asp:Repeater ID="RptTicketLabels" runat="server" DataSourceID="SdsTicketsPerMovie"><ItemTemplate>"<%# Eval("TITLE") %>",</ItemTemplate></asp:Repeater>""];
            var ticketData = [<asp:Repeater ID="RptTicketData" runat="server" DataSourceID="SdsTicketsPerMovie"><ItemTemplate><%# Eval("TICKET_COUNT") %>,</ItemTemplate></asp:Repeater>0];
            var occLabels = [<asp:Repeater ID="RptOccLabels" runat="server" DataSourceID="SdsOccupancy"><ItemTemplate>"<%# Eval("HALL_NAME") %>",</ItemTemplate></asp:Repeater>""];
            var occData = [<asp:Repeater ID="RptOccData" runat="server" DataSourceID="SdsOccupancy"><ItemTemplate><%# Eval("OCC_PCT") %>,</ItemTemplate></asp:Repeater>0];
          var userLabels    = [<asp:Repeater ID="RptUserLabels"    runat="server" DataSourceID="SdsBookingsPerUser"><ItemTemplate>"<%# Eval("USERNAME") %>",</ItemTemplate></asp:Repeater>""];
          var userData      = [<asp:Repeater ID="RptUserData"      runat="server" DataSourceID="SdsBookingsPerUser"><ItemTemplate><%# Eval("BOOKING_COUNT") %>,</ItemTemplate></asp:Repeater>0];

                  ticketLabels.pop(); ticketData.pop();
                  occLabels.pop(); occData.pop();
                  userLabels.pop(); userData.pop();
        </script>
      </div>
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
    <script>
        const baseScales = {
            x: {
                ticks: { color: "#666", font: { size: 11 } },
                grid: { color: "#2a2a2a" },
            },
            y: {
                ticks: { color: "#666", font: { size: 11 } },
                grid: { color: "#2a2a2a" },
            },
        };

        new Chart(document.getElementById("chartTicketsPerMovie"), {
            type: "bar",
            data: {
                labels: ticketLabels,
                datasets: [
                    { data: ticketData, backgroundColor: "#D0182E", borderRadius: 4 },
                ],
            },
            options: {
                plugins: { legend: { display: false } },
                scales: baseScales,
            },
        });

        new Chart(document.getElementById("chartOccupancyPerHall"), {
            type: "bar",
            data: {
                labels: occLabels,
                datasets: [
                    { data: occData, backgroundColor: "#E8B84B", borderRadius: 4 },
                ],
            },
            options: {
                plugins: { legend: { display: false } },
                scales: {
                    x: baseScales.x,
                    y: {
                        ...baseScales.y,
                        max: 100,
                        ticks: {
                            color: "#666",
                            font: { size: 11 },
                            callback: (v) => v + "%",
                        },
                    },
                },
            },
        });

        new Chart(document.getElementById("chartBookingsPerUser"), {
            type: "bar",
            data: {
                labels: userLabels,
                datasets: [
                    { data: userData, backgroundColor: "#4a9eff", borderRadius: 4 },
                ],
            },
            options: {
                plugins: { legend: { display: false } },
                scales: baseScales,
            },
        });
    </script>
  </body>
</html>

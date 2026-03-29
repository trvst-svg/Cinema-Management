<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketDetails.aspx.cs"
Inherits="WebApplication1.TicketDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Tickets</title>
    <link rel="stylesheet" href="~/Content/bootstrap.min.css" />
    <style>
      body {
        background-color: #1a1a1a;
        color: #eee;
        font-family: "Segoe UI", sans-serif;
      }
      .grid-table { width: 100%; border-collapse: collapse; }
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
      .grid-table a:hover { color: #e8b84b !important; border-color: #e8b84b !important; }
      .grid-table input[type="text"],
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
      .grid-table select:focus { border-color: #e8b84b !important; }
      .grid-table select option { background-color: #111; color: #eee; }
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
      .form-card select:focus { border-color: #e8b84b !important; }
      .form-card select option { background-color: #111; color: #eee; }
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
      .btn-insert:hover { background-color: #b5152a; color: #fff; }
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
      .btn-cancel:hover { border-color: #555; color: #eee; }
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
      .btn-new:hover { background-color: #b5152a; }
      .page-header { border-left: 4px solid #d0182e; padding-left: 18px; margin-bottom: 40px; }
      .page-header h1 { font-size: 36px; font-weight: 900; letter-spacing: 0.06em; color: #fff; }
      .section-divider { display: flex; align-items: center; gap: 16px; margin-bottom: 24px; }
      .section-divider h2 {
        font-size: 18px;
        font-weight: 700;
        letter-spacing: 0.06em;
        color: #fff;
        white-space: nowrap;
        text-transform: uppercase;
      }
      .section-divider .line { flex: 1; height: 1px; background: #2a2a2a; }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <nav style="background-color:#1a1a1a; border-bottom:2px solid #d0182e; padding:0 40px; display:flex; align-items:center; height:54px;">
        <a href="Homepage.aspx" style="font-weight:900; font-size:20px; color:#fff; letter-spacing:0.05em; text-decoration:none; white-space:nowrap; margin-right:40px;">KUMARI CINEMAS</a>
        <ul style="list-style:none; display:flex; align-items:center; gap:24px; margin:0; padding:20%; flex-wrap:wrap;">
          <li><a href="UserDetails.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Users</a></li>
          <li><a href="TheatreHallDetails.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Theatres</a></li>
          <li><a href="ShowTimeDetails.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Shows</a></li>
          <li><a href="MovieDetails.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Movies</a></li>
          <li><a href="TicketDetails.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Tickets</a></li>
          <li><a href="UserTicket.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">User Tickets</a></li>
          <li><a href="TheatreHallMovie.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Hall Movies</a></li>
          <li><a href="MovieOccupancy.aspx" style="color:#aaa; font-size:13px; text-decoration:none" onmouseover="this.style.color='#E8B84B'" onmouseout="this.style.color='#aaa'">Occupancy</a></li>
        </ul>
      </nav>

      <div style="max-width:1280px; margin:0 auto; padding:48px 32px">
        <div class="page-header"><h1>Tickets</h1></div>

        <div class="section-divider">
          <h2>All Tickets</h2>
          <div class="line"></div>
        </div>

        <div class="table-card">
          <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="TICKET_ID"
            DataSourceID="SqlDataSource1"
            CssClass="grid-table"
            GridLines="None"
            Width="100%"
          >
            <Columns>

              <asp:TemplateField HeaderText="TICKET ID">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("TICKET_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("TICKET_ID") %>' style="color:#555; font-size:12px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="PAYMENT STATUS">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("PAYMENT_STATUS") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:DropDownList ID="PAYMENT_STATUSDropDown" runat="server"
                    SelectedValue='<%# Bind("PAYMENT_STATUS") %>'>
                    <asp:ListItem Value="paid">paid</asp:ListItem>
                    <asp:ListItem Value="booked">booked</asp:ListItem>
                    <asp:ListItem Value="refunded">refunded</asp:ListItem>
                    <asp:ListItem Value="cancelled">cancelled</asp:ListItem>
                  </asp:DropDownList>
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="BOOKING DATETIME">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("BOOKING_DATETIME") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("BOOKING_DATETIME") %>' style="color:#555; font-size:12px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="CANCELLATION DEADLINE">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("CANCELLATION_DEADLINE") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("CANCELLATION_DEADLINE") %>' style="color:#555; font-size:12px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="AMOUNT PAID">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("AMOUNT_PAID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="AMOUNT_PAIDTextBox" runat="server"
                    Text='<%# Bind("AMOUNT_PAID") %>' style="min-width:80px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="USER">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("U_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="U_IDTextBox" runat="server"
                    Text='<%# Bind("U_ID") %>' style="min-width:60px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="SHOW">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SH_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="SH_IDTextBox" runat="server"
                    Text='<%# Bind("SH_ID") %>' style="min-width:60px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="SEAT">
                <ItemTemplate>
                  <asp:Label runat="server" Text='<%# Eval("SE_ID") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:TextBox ID="SE_IDTextBox" runat="server"
                    Text='<%# Bind("SE_ID") %>' style="min-width:60px;" />
                </EditItemTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="ACTIONS">
                <ItemTemplate>
                  <asp:LinkButton runat="server" CommandName="Edit" Text="Edit" CausesValidation="false" />
                  <asp:LinkButton runat="server" CommandName="Delete" Text="Delete" CausesValidation="false"
                    OnClientClick="return confirm('Delete this ticket?');" />
                </ItemTemplate>
                <EditItemTemplate>
                  <asp:LinkButton runat="server" CommandName="Update" Text="Save" CausesValidation="true" />
                  <asp:LinkButton runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
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
          SelectCommand='SELECT "TICKET_ID", "PAYMENT_STATUS", "BOOKING_DATETIME", "CANCELLATION_DEADLINE", "AMOUNT_PAID", "U_ID", "SH_ID", "SE_ID" FROM "TICKETS"'
          InsertCommand='INSERT INTO "TICKETS" ("TICKET_ID", "PAYMENT_STATUS", "BOOKING_DATETIME", "CANCELLATION_DEADLINE", "AMOUNT_PAID", "U_ID", "SH_ID", "SE_ID") VALUES (:TICKET_ID, :PAYMENT_STATUS, :BOOKING_DATETIME, :CANCELLATION_DEADLINE, :AMOUNT_PAID, :U_ID, :SH_ID, :SE_ID)'
          UpdateCommand='UPDATE "TICKETS" SET "PAYMENT_STATUS"=:PAYMENT_STATUS, "BOOKING_DATETIME"=:BOOKING_DATETIME, "CANCELLATION_DEADLINE"=:CANCELLATION_DEADLINE, "AMOUNT_PAID"=:AMOUNT_PAID, "U_ID"=:U_ID, "SH_ID"=:SH_ID, "SE_ID"=:SE_ID WHERE "TICKET_ID"=:TICKET_ID'
          DeleteCommand='DELETE FROM "TICKETS" WHERE "TICKET_ID"=:TICKET_ID'
        >
          <DeleteParameters>
            <asp:Parameter Name="TICKET_ID" Type="String" />
          </DeleteParameters>
          <InsertParameters>
            <asp:Parameter Name="TICKET_ID" Type="String" />
            <asp:Parameter Name="PAYMENT_STATUS" Type="String" />
            <asp:Parameter Name="BOOKING_DATETIME" Type="DateTime" />
            <asp:Parameter Name="CANCELLATION_DEADLINE" Type="DateTime" />
            <asp:Parameter Name="AMOUNT_PAID" Type="Decimal" />
            <asp:Parameter Name="U_ID" Type="String" />
            <asp:Parameter Name="SH_ID" Type="String" />
            <asp:Parameter Name="SE_ID" Type="String" />
          </InsertParameters>
          <UpdateParameters>
            <asp:Parameter Name="PAYMENT_STATUS" Type="String" />
            <asp:Parameter Name="BOOKING_DATETIME" Type="DateTime" />
            <asp:Parameter Name="CANCELLATION_DEADLINE" Type="DateTime" />
            <asp:Parameter Name="AMOUNT_PAID" Type="Decimal" />
            <asp:Parameter Name="U_ID" Type="String" />
            <asp:Parameter Name="SH_ID" Type="String" />
            <asp:Parameter Name="SE_ID" Type="String" />
            <asp:Parameter Name="TICKET_ID" Type="String" />
          </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView
          ID="FormView1"
          runat="server"
          DataKeyNames="TICKET_ID"
          DataSourceID="SqlDataSource1"
        >
          <ItemTemplate>
            <div style="margin-top:24px">
              <asp:LinkButton
                ID="NewButton"
                runat="server"
                CausesValidation="False"
                CommandName="New"
                Text="+ Add Ticket"
                CssClass="btn-new"
              />
            </div>
          </ItemTemplate>

          <InsertItemTemplate>
            <div class="form-card">
              <div class="section-divider">
                <h2>Add New Ticket</h2>
                <div class="line"></div>
              </div>
              <div class="row g-3">
                <div class="col-md-2">
                  <span class="form-label">Ticket ID</span>
                  <asp:TextBox ID="TICKET_IDTextBox" runat="server"
                    Text='<%# Bind("TICKET_ID") %>' placeholder="e.g. T001" />
                </div>
                <div class="col-md-2">
                  <span class="form-label">Payment Status</span>
                  <asp:DropDownList ID="DropDownList4" runat="server"
                    SelectedValue='<%# Bind("PAYMENT_STATUS") %>'>
                    <asp:ListItem>paid</asp:ListItem>
                    <asp:ListItem>booked</asp:ListItem>
                    <asp:ListItem>refunded</asp:ListItem>
                    <asp:ListItem>cancelled</asp:ListItem>
                  </asp:DropDownList>
                </div>
                <div class="col-md-2">
                  <span class="form-label">Amount Paid</span>
                  <asp:TextBox ID="AMOUNT_PAIDTextBox" runat="server"
                    Text='<%# Bind("AMOUNT_PAID") %>' placeholder="0.00" />
                </div>
                <div class="col-md-3">
                  <span class="form-label">User</span>
                  <asp:DropDownList ID="DropDownList1" runat="server"
                    SelectedValue='<%# Bind("U_ID") %>'
                    DataSourceID="SqlDataSource2"
                    DataTextField="USERNAME"
                    DataValueField="USER_ID">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                    SelectCommand='SELECT "USER_ID", "USERNAME" FROM "USERS"'>
                  </asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                  <span class="form-label">Show</span>
                  <asp:DropDownList ID="DropDownList2" runat="server"
                    SelectedValue='<%# Bind("SH_ID") %>'
                    DataSourceID="SqlDataSource3"
                    DataTextField="SHOW_LABEL"
                    DataValueField="SHOW_ID">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                    SelectCommand="SELECT s.show_id, '(' || TO_CHAR(s.show_datetime, 'YYYY-MM-DD HH24:MI') || '    ' || m.title || ')' AS SHOW_LABEL FROM shows s JOIN movies m ON s.m_id = m.movie_id">
                  </asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                  <span class="form-label">Seat</span>
                  <asp:DropDownList ID="DropDownList3" runat="server"
                    SelectedValue='<%# Bind("SE_ID") %>'
                    DataSourceID="SqlDataSource4"
                    DataTextField="SEAT_LABEL"
                    DataValueField="SEAT_ID">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                    SelectCommand="SELECT s.seat_id, '(' || s.seat_name || '    ' || t.hall_name || ')' AS SEAT_LABEL FROM seats s JOIN theatre_hall t ON s.t_h_id = t.theatre_hall_id">
                  </asp:SqlDataSource>
                </div>
              </div>
              <div style="margin-top:8px">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True"
                  CommandName="Insert" Text="Insert Ticket" CssClass="btn-insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
                  CommandName="Cancel" Text="Cancel" CssClass="btn-cancel" />
              </div>
            </div>
          </InsertItemTemplate>
        </asp:FormView>
      </div>
    </form>
  </body>
</html>
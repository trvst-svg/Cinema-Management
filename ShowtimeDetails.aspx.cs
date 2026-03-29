using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ShowtimeDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType != DataControlRowType.DataRow) return;
            if ((e.Row.RowState & DataControlRowState.Edit) == 0) return;

            DataRowView row = (DataRowView)e.Row.DataItem;

            DropDownList hallDdl = (DropDownList)e.Row.FindControl("T_H_IDDropDown");
            if (hallDdl != null)
            {
                hallDdl.DataSource = SqlDataSourceHalls;
                hallDdl.DataTextField = "HALL_NAME";
                hallDdl.DataValueField = "THEATRE_HALL_ID";
                hallDdl.DataBind();
                string currentHall = row["T_H_ID"].ToString();
                if (hallDdl.Items.FindByValue(currentHall) != null)
                    hallDdl.SelectedValue = currentHall;
            }

            DropDownList movieDdl = (DropDownList)e.Row.FindControl("M_IDDropDown");
            if (movieDdl != null)
            {
                movieDdl.DataSource = SqlDataSourceMovies;
                movieDdl.DataTextField = "TITLE";
                movieDdl.DataValueField = "MOVIE_ID";
                movieDdl.DataBind();
                string currentMovie = row["M_ID"].ToString();
                if (movieDdl.Items.FindByValue(currentMovie) != null)
                    movieDdl.SelectedValue = currentMovie;
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];

            DropDownList hallDdl = (DropDownList)row.FindControl("T_H_IDDropDown");
            if (hallDdl != null)
                e.NewValues["T_H_ID"] = hallDdl.SelectedValue;

            DropDownList movieDdl = (DropDownList)row.FindControl("M_IDDropDown");
            if (movieDdl != null)
                e.NewValues["M_ID"] = movieDdl.SelectedValue;
        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            e.Values["SHOW_DATETIME"] = DateTime.Now;
        }
    }
}
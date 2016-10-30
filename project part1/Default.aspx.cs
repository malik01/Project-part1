using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements that are required to connect to EF DB
using System.Diagnostics;
using project_part1.Models;

namespace project_part1
{

    public partial class Default : System.Web.UI.Page
    {
        static int currentWeek = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time
            // populate the results grid
            if (!IsPostBack)
            {
                this.GetResults();
            }
        }

        /// <summary>
        /// This method gets the game results from the DB
        /// </summary>
        private void GetResults()
        {
            // update page title with week information
            Debug.WriteLine(currentWeek);
            Page.Title = "Game - Week " + currentWeek;

            // connect to EF DB
            using (TeamContext db = new TeamContext())
            {
                // Game 1
                // query the Results Table using EF and LINQ
                var game1Info = (from allInfo in db.Results
                                 where allInfo.GameID == 1
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView1.DataSource = game1Info.ToList();
                GameInfoGridView1.DataBind();


                // query the information form Team 1
                /* failed attemp
                var results = (from allResults in db.Results
                               join allTeams in db.Teams on allResults.TeamID1 equals allTeams.TeamID
                               where allResults.GameID == 1
                               where allResults.WeekNumber == 1
                               where allResults.TeamID1 == 100
                               select allResults);
                */
                // query the Teams Table using EF and LINQ
                var team11Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 1
                                  where allInfo.TeamID == 100
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView1.DataSource = team11Info.ToList();
                TeamInfo1GridView1.DataBind();

                // query the Results Table using EF and LINQ
                var team11Result = (from allResults in db.Results
                                    where allResults.GameID == 1
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 100
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView1.DataSource = team11Result.ToList();
                TeamResult1GridView1.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team12Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 1
                                  where allInfo.TeamID == 101
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView1.DataSource = team12Info.ToList();
                TeamInfo2GridView1.DataBind();

                // query the Results Table using EF and LINQ
                var team12Result = (from allResults in db.Results
                                    where allResults.GameID == 1
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 101
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView1.DataSource = team12Result.ToList();
                TeamResult2GridView1.DataBind();


                // Game 2
                // query the Results Table using EF and LINQ
                var game2Info = (from allInfo in db.Results
                                 where allInfo.GameID == 2
                                 where allInfo.WeekNumber == currentWeek
                                 select allInfo);

                // bind the result to the GameInfo GridView
                GameInfoGridView2.DataSource = game2Info.ToList();
                GameInfoGridView2.DataBind();


                // query the information form Team 1
                // query the Teams Table using EF and LINQ
                var team21Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 2
                                  where allInfo.TeamID == 102
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo1GridView2.DataSource = team21Info.ToList();
                TeamInfo1GridView2.DataBind();

                // query the Results Table using EF and LINQ
                var team21Result = (from allResults in db.Results
                                    where allResults.GameID == 2
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID1 == 102
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult1GridView2.DataSource = team21Result.ToList();
                TeamResult1GridView2.DataBind();


                // query the information form Team 2
                // query the Teams Table using EF and LINQ
                var team22Info = (from allInfo in db.Teams
                                  where allInfo.GameID == 2
                                  where allInfo.TeamID == 103
                                  select allInfo);

                // bind the result to the TeamInfo GridView
                TeamInfo2GridView2.DataSource = team22Info.ToList();
                TeamInfo2GridView2.DataBind();

                // query the Results Table using EF and LINQ
                var team22Result = (from allResults in db.Results
                                    where allResults.GameID == 2
                                    where allResults.WeekNumber == currentWeek
                                    where allResults.TeamID2 == 103
                                    select allResults);

                // bind the result to the TeamResult GridView
                TeamResult2GridView2.DataSource = team22Result.ToList();
                TeamResult2GridView2.DataBind();

            }
        }

        protected void link_week_2_Click(object sender, EventArgs e)
        {
            currentWeek = 2;
            this.GetResults();
        }
        protected void link_week_1_Click(object sender, EventArgs e)
        {
            currentWeek = 1;
            this.GetResults();
        }
        protected void link_week_3_Click(object sender, EventArgs e)
        {
            currentWeek = 3;
            this.GetResults();
        }
        protected void link_week_4_Click(object sender, EventArgs e)
        {
            currentWeek = 4;
            this.GetResults();
        }

        /// <summary>
        /// This method deletes a record of game 1 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void TeamResult1GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get the selected week and game ID using the Grid's DataKey collection
            int gameWeek = Convert.ToInt32(GameInfoGridView1.DataKeys[selectedRow].Values["WeekNumber"]);
            int gameID = Convert.ToInt32(GameInfoGridView1.DataKeys[selectedRow].Values["GameID"]);
            Debug.WriteLine("week: " + gameWeek);
            Debug.WriteLine("id: " + gameID);

            // using EF and LINQ to find the selected game result in DB and remove it
            using (TeamContext db = new TeamContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == gameWeek
                                        where results.GameID == gameID
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }
        }

        /// <summary>
        /// This method deletes a record of game 2 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (TeamContext db = new TeamContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 2
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }
        }

        /// <summary>
        /// This method deletes a record of game 3 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (TeamContext db = new TeamContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 3
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }

        }

        /// <summary>
        /// This method deletes a record of game 4 from db
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void GameInfoGridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // check if a user is logged in
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // redirect to Login page
                Response.Redirect("/Login.aspx");
            }

            // using EF and LINQ to find the selected game result in DB and remove it
            using (TeamContext db = new TeamContext())
            {
                // create object of the result class and store the query inside of it
                Result deletedResult = (from results in db.Results
                                        where results.WeekNumber == currentWeek
                                        where results.GameID == 4
                                        select results).FirstOrDefault();

                // remove the selected result from DB
                db.Results.Remove(deletedResult);

                // save the change back to DB
                db.SaveChanges();

                // refresh the page
                this.GetResults();
            }

        }
    }
}
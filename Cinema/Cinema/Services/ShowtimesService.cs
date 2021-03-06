﻿using Cinema.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using System.Globalization;
using System.Threading;

namespace Cinema.Services
{
    class ShowtimesService
    {
        public void ShowShowtimes(DataGridView table)
        {
            using (CinemaEntities database = new CinemaEntities())
            {
                table.DataSource=database.SHOWTIME_VIEW.ToList();
            }
        }

        public void ShowShowtimesByDate(DataGridView table, string date)
        {

            date = this.DateConverter(date);

            using (CinemaEntities database = new CinemaEntities())
            {
                table.DataSource = database.SHOWTIME_VIEW.Where(x => x.Date.Contains(date)).ToList();
            }
        }

        public string DateConverter(string date)
        {
            // e.g. 2020-01-11 => 2020-1-11
            if (date[5] == '0')
            {
                date = date.Remove(5, 1);
                // e.g. 2020-01-01 => 2020-1-1
                if (date[7] == '0')
                {
                    date = date.Remove(7, 1);
                }
            }
            // e.g. 2020-11-01 => 2020-11-1
            else if (date[8] == '0')
            {
                date = date.Remove(8, 1);
            }

            return date.Length == 10 ? date : date + " ";
        }

        public void GetShowtimes(DataGridView table)
        {
            using (CinemaEntities database = new CinemaEntities())
            {
                table.DataSource = database.Showtime.Join(database.Movie, x => x.Movie_ID, y => y.Movie_ID,
                        (x, y) => new { x.Showtime_ID, x.Movie_ID, y.Title, x.Screen_ID, x.Date, x.Technology })
                            .ToList();
            }
        }

        public void AddShowtime(int movieID, int screenID, string date, string technology)
        {
            using(CinemaEntities database = new CinemaEntities())
            {
                Showtime showtime = database.Showtime.Create();

                showtime.Showtime_ID = Convert.ToInt32(database.sp_getSeqShowtimeID().FirstOrDefault());
                showtime.Movie_ID = movieID;
                showtime.Screen_ID = screenID;
                showtime.Date = DateTime.Parse(date);
                showtime.Technology = technology;

                database.Showtime.Add(showtime);
                database.SaveChanges();
            }
        }

        public void EditShowtime(int showtimeID, int screenID, string date, string technology)
        {
            using (CinemaEntities database = new CinemaEntities())
            {

                Showtime showtime = database.Showtime.Single(x => x.Showtime_ID == showtimeID);

                showtime.Screen_ID = screenID;
                showtime.Date = DateTime.Parse(date);
                showtime.Technology = technology;

                database.SaveChanges();
            }
        }

        public void ShowAvailableSeats(ComboBox seats, int showtimeID)
        {
            using (CinemaEntities database = new CinemaEntities())
            {

                seats.DataSource = database.sp_showAvailableSeats(showtimeID);
                seats.ValueMember = "Seat_ID";
                seats.DisplayMember = "Name";
            }
        }
        public int GetShowtimeID(int screenID, string date)
        {
            
            int ID = 0;
            using (CinemaEntities database = new CinemaEntities())
            {
                DateTime myDate = DateTime.Parse(date);
                Showtime showtime = database.Showtime.Where(x => x.Screen_ID == screenID && x.Date == myDate).SingleOrDefault();
                if (showtime != null)
                {
                    ID = showtime.Showtime_ID;
                }
            }
            return ID;

        }

        public void OrderingTicket( int showtimeID, int customerID, int seatID, int ticketTypeID, string status)
        {

            using (CinemaEntities database = new CinemaEntities())
            {
                Ticket newTicket = database.Ticket.Create();

                //obecna data
                DateTime myDateTime = DateTime.Now;
                //format daty poprawny do sql
                string sqlFormattedDate = myDateTime.ToString("yyyy-MM-dd HH:mm");

                newTicket.Ticket_ID = Convert.ToInt32(database.sp_getSeqTicketID().FirstOrDefault());
                newTicket.Customer_ID = customerID;
                newTicket.Showtime_ID = showtimeID;
                newTicket.Seat_ID = seatID;
                newTicket.Ticket_Type_ID = ticketTypeID;
                newTicket.Status = status;
                newTicket.Date = DateTime.Parse(sqlFormattedDate);

                database.Ticket.Add(newTicket);
                database.SaveChanges();
            }
        }
    }
}

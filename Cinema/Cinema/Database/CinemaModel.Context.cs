﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cinema.Database
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class CinemaEntities : DbContext
    {
        public CinemaEntities()
            : base("name=CinemaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Comment> Comment { get; set; }
        public virtual DbSet<Complaint> Complaint { get; set; }
        public virtual DbSet<Customer> Customer { get; set; }
        public virtual DbSet<dbRole> dbRole { get; set; }
        public virtual DbSet<Genre> Genre { get; set; }
        public virtual DbSet<Movie> Movie { get; set; }
        public virtual DbSet<Rating> Rating { get; set; }
        public virtual DbSet<Screen> Screen { get; set; }
        public virtual DbSet<Seat> Seat { get; set; }
        public virtual DbSet<Showtime> Showtime { get; set; }
        public virtual DbSet<Ticket> Ticket { get; set; }
        public virtual DbSet<Ticket_Type> Ticket_Type { get; set; }
        public virtual DbSet<SHOWTIME_VIEW> SHOWTIME_VIEW { get; set; }
        public virtual DbSet<TICKET_VIEW> TICKET_VIEW { get; set; }
    
        public virtual ObjectResult<sp_showAvailableSeats_Result> sp_showAvailableSeats(Nullable<int> showtime_ID)
        {
            var showtime_IDParameter = showtime_ID.HasValue ?
                new ObjectParameter("Showtime_ID", showtime_ID) :
                new ObjectParameter("Showtime_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showAvailableSeats_Result>("sp_showAvailableSeats", showtime_IDParameter);
        }
    
        public virtual ObjectResult<sp_showAverageRatingMovie_Result> sp_showAverageRatingMovie(Nullable<int> movie_ID)
        {
            var movie_IDParameter = movie_ID.HasValue ?
                new ObjectParameter("Movie_ID", movie_ID) :
                new ObjectParameter("Movie_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showAverageRatingMovie_Result>("sp_showAverageRatingMovie", movie_IDParameter);
        }
    
        public virtual ObjectResult<sp_showCommentsCustomer_Result> sp_showCommentsCustomer(Nullable<int> customer_ID)
        {
            var customer_IDParameter = customer_ID.HasValue ?
                new ObjectParameter("Customer_ID", customer_ID) :
                new ObjectParameter("Customer_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCommentsCustomer_Result>("sp_showCommentsCustomer", customer_IDParameter);
        }
    
        public virtual ObjectResult<sp_showCommentsMovie_Result> sp_showCommentsMovie(Nullable<int> movie_ID)
        {
            var movie_IDParameter = movie_ID.HasValue ?
                new ObjectParameter("Movie_ID", movie_ID) :
                new ObjectParameter("Movie_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCommentsMovie_Result>("sp_showCommentsMovie", movie_IDParameter);
        }
    
        public virtual ObjectResult<sp_showComplaints_Result> sp_showComplaints(Nullable<int> customer_ID)
        {
            var customer_IDParameter = customer_ID.HasValue ?
                new ObjectParameter("Customer_ID", customer_ID) :
                new ObjectParameter("Customer_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showComplaints_Result>("sp_showComplaints", customer_IDParameter);
        }
    
        public virtual ObjectResult<sp_showCustomer_Result> sp_showCustomer(Nullable<int> customer_ID)
        {
            var customer_IDParameter = customer_ID.HasValue ?
                new ObjectParameter("Customer_ID", customer_ID) :
                new ObjectParameter("Customer_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCustomer_Result>("sp_showCustomer", customer_IDParameter);
        }
    
        public virtual ObjectResult<sp_showCustomerRatings_Result> sp_showCustomerRatings(Nullable<int> customer_ID)
        {
            var customer_IDParameter = customer_ID.HasValue ?
                new ObjectParameter("Customer_ID", customer_ID) :
                new ObjectParameter("Customer_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCustomerRatings_Result>("sp_showCustomerRatings", customer_IDParameter);
        }
    
        public virtual ObjectResult<sp_showCustomers_Result> sp_showCustomers()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCustomers_Result>("sp_showCustomers");
        }
    
        public virtual ObjectResult<sp_showGenre_Result> sp_showGenre(Nullable<int> movie_ID)
        {
            var movie_IDParameter = movie_ID.HasValue ?
                new ObjectParameter("Movie_ID", movie_ID) :
                new ObjectParameter("Movie_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showGenre_Result>("sp_showGenre", movie_IDParameter);
        }
    
        public virtual ObjectResult<sp_showMovie_Result> sp_showMovie(Nullable<int> movie_ID)
        {
            var movie_IDParameter = movie_ID.HasValue ?
                new ObjectParameter("Movie_ID", movie_ID) :
                new ObjectParameter("Movie_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showMovie_Result>("sp_showMovie", movie_IDParameter);
        }
    
        public virtual ObjectResult<sp_showMovieRatings_Result> sp_showMovieRatings(Nullable<int> movie_ID)
        {
            var movie_IDParameter = movie_ID.HasValue ?
                new ObjectParameter("Movie_ID", movie_ID) :
                new ObjectParameter("Movie_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showMovieRatings_Result>("sp_showMovieRatings", movie_IDParameter);
        }
    
        public virtual ObjectResult<sp_showMovies_Result> sp_showMovies()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showMovies_Result>("sp_showMovies");
        }
    
        public virtual ObjectResult<sp_showTickets_Result> sp_showTickets(Nullable<int> showtime_ID)
        {
            var showtime_IDParameter = showtime_ID.HasValue ?
                new ObjectParameter("Showtime_ID", showtime_ID) :
                new ObjectParameter("Showtime_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showTickets_Result>("sp_showTickets", showtime_IDParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqCustomerID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqCustomerID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqCommentID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqCommentID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqComplaintID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqComplaintID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqGenreID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqGenreID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqMovieID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqMovieID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqRatingID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqRatingID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqRoleID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqRoleID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqScreenID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqScreenID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqSeatID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqSeatID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqShowtimeID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqShowtimeID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqTicketID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqTicketID");
        }
    
        public virtual ObjectResult<Nullable<int>> sp_getSeqTicketTypeID()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("sp_getSeqTicketTypeID");
        }
    
        public virtual ObjectResult<sp_showCustomerTickets_Result> sp_showCustomerTickets(Nullable<int> customer_ID)
        {
            var customer_IDParameter = customer_ID.HasValue ?
                new ObjectParameter("Customer_ID", customer_ID) :
                new ObjectParameter("Customer_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_showCustomerTickets_Result>("sp_showCustomerTickets", customer_IDParameter);
        }
    }
}

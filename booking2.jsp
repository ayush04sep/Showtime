<html>
<head>
<link rel="stylesheet" href="css/bookingpage.css">
</head>
<body background=images/promo.png></body>
<div id="container">
  <div id="form">
    <form id="book_tickets" name='frm' action="printsultan.jsp" method="post">
    
    <br><br><br><br>
      <fieldset>
        <legend>Booking Details</legend>

		<p>
          <label for="movie_name" name="screen"><b>Screen</label></b>
          <input type="text" name=screen disabled="disable" value="Screen 2">
          
          <!-- <select id="movie_name" name="movie_name" required autofocus>
           Screen 1
          </select> -->
        </p>
        
        <p>
          <label for="movie_name" name="movie"><b>Movie</label></b>
          <input type="text" name=movie disabled="disable" value="Dishoom">
          <!--  <select id="movie_name" name="movie_name" required autofocus>
            Sultan
          </select> -->
        </p>
        
        <p>
          <label for="movie_name"><b>Time Slot</label></b>
          <select name="timeslot" required="required">
            <option value="3:00 pm" selected>3:00</option>
            <option value="6:00 pm">6:00</option>
            <option value="9:00 pm">9:00</option>
          </select>
        </p>

        <p>
          <label for="movie_date"><b>Date</label></b>
          <select  name="date" required="required">
            <option value="20th/Aug2016" selected>20th/Aug2016</option>
            <option value="21th/Aug2016">21th/Aug2016</option>
            <option value="22th/Aug2016">22th/Aug2016</option>
            <option value="23th/Aug2016">23th/Aug2016</option>
            <option value="24th/Aug2016">24th/Aug2016</option>
            <option value="25th/Aug2016">25th/Aug2016</option>
            <option value="26th/Aug2016">26th/Aug2016</option>
          </select>
        </p>

        <p>
          <label for="email"><b>Email</b></label>
          <input type="email" name="email" required />
        </p>
         <p>
          <label for="tickets_quantity"><b># Tickets</b></label>
          <input type="number" min="1" max="15" name="ntickets"  required />
        </p>
		  <p> 
          <label><b>Book Your Seat: </b></label>
          <a href="seat_booking.jsp">seat</a>
		</p> 
        <p>
          <label><b></b></label>
          <span id="total_price">(Enter details first)</span>
        </p>
        <div id="submit_wrapper">
          <a href=""><input type="submit" id="submit" value="Book Tickets"></a>
          <a href="profile_page.jsp"><input type="button" value="Back" ></a>
        </div>
      </fieldset>
    </form>
    <p id="perTicketPrice">Per ticket price = &#x20b9; 100.00</p>
    <p id="discount">
      <span id="disount_title">Discounts:</span>
    <ul>
      <li><b>5% discount if show is on weekday</li></b>
      <li><b>10% discount if number of booked ticket >= 10</li><b>
    </ul>
    </p>
</div>		    	
</div>
<script id="worker" type="javascript/worker">
        self.onmessage = function msgWorkerHandler(event){
            var jsonString = event.data;

            var day = jsonString.day;
            var number_booked_shows = jsonString.number_booked_shows;
            var tickets_quantity = jsonString.tickets_quantity;

            // set price of each ticket as Rs. 100
            var totalPrice = tickets_quantity * 100;

            // 5% discount if on weekday
            if(day > 0 && day < 6){
                totalPrice = totalPrice - 0.05 * totalPrice;
            }

            // 10% discount if number of booked shows >= 10
            if(number_booked_shows >= 10){
                totalPrice = totalPrice - 0.10 * totalPrice;
            }

           	postMessage("&#x20b9; " + totalPrice);
        }
</script>
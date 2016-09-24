<html>
<head>
<link rel="stylesheet" href="css/bookingpage.css">
<script id="book_tickets" language=javascript>
function validate()
{
	System.ot.print("date verification");
	moment(20-aug-2015).isbefore(document.frm.date.value);
	alert("Invalid date");
}
</script>
</head>
<body background=images/promo.jpg></body>
<div id="container">
  <div id="form">
    <form id="book_tickets" name='fmr' onsubmit="return validate()">
    
    <br><br><br><br>
      <fieldset>
        <legend>Booking Details</legend>

        <p>
          <label for="movie_name"><b>Movie</label></b>
          <select id="movie_name" name="movie_name" required autofocus>
            <option>Movie</option>
            <option value="Movie 1">Movie 1</option>
            <option value="Movie 2">Movie 2</option>
            <option value="Movie 3">Movie 3</option>
          </select>
        </p>

        <p>
          <label for="theaters"><b>Theaters</b></label>
          <select id="theaters" required>
            <option>Theater</option>
            <option value="Theater 1">Theater 1</option>
            <option value="Theater 2">Theater 2</option>
            <option value="Theater 3">Theater 3</option>
          </select>
        </p>

        <p>
          <label for="date"><b>Date</b><br/><span id="dateNote"></span></label>
          <input type="date" name="date" id="date" min="today" required />
        </p>

        <p>
          <label for="email"><b>Email</b></label>
          <input type="email" name="email" id="email" required />
        </p>

        <p>
          <label for="tickets_quantity"><b># Tickets</b></label>
          <input type="number" min="1" name="tickets_quantity" id="tickets_quantity" required />
        </p>
		<p>
          <label><b>Book Your Seat: </b></label>
          <input type="button" value="book seat">
        </p>
        <p>
          <label><b>Total Price: </b></label>
          <span id="total_price">(enter data first)</span>
        </p>
        <div id="submit_wrapper">
          <input type="submit" id="submit" value="Book Tickets" />
        </div>
      </fieldset>
    </form>
    <p id="perTicketPrice">Per ticket price = &#x20b9; 100.00</p>
    <p id="discount">
      <span id="disount_title">Discounts:</span>
    <ul>
      <li>5% discount if show is on weekday</li>
      <li>10% discount if number of booked tickets >= 10</li>
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
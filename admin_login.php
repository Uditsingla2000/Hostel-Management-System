<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>admin</title>
<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent1">
      <ul class="navbar-nav mr-auto">
        
        <li class="nav-item"> </li>
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='admin_login.php'" >Home</button></li>

        <li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Staff
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="staff_insert.php">Insert Staff Record</a>
    <a class="dropdown-item" href="staff_view.php">View Staff Record</a>
  </div>
</div>
</li>
        <li class="nav-item">&nbsp;</li>
      <li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Hostel
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="hostel_insert.php">Insert Hostel Record</a>
    <a class="dropdown-item" href="hostel_view.php">View Hostel Record</a>
  </div>
</div>
</li>
        
        <li class="nav-item">&nbsp;</li>
      <li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Room
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="room_insert.php">Insert Room Record</a>
    <a class="dropdown-item" href="room_view.php">View Room Record</a>
  </div>
</div>
</li>
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='complaint_view.php'" >Complaint Box</button></li>
        
        <li><button type="button" class="btn btn-primary" onclick="window.location.href='leave_view.php'" > Leave </button></li>
        <li class="nav-item">&nbsp;</li>
      <li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Notice
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="message_insert.php">Write A Message</a>
    <a class="dropdown-item" href="message_view.php">View Message Record</a>
  </div>
</div>
</li>
<li><div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Student
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="student.php">Insert Student Data</a>
    <a class="dropdown-item" href="student_all_view.php">View Student Data</a>
  </div>

</div>
</li>
<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li><button type="button" class="btn btn-primary" onclick="window.location.href='logout.php'" >Logout</button></li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
      </form>
    </div>
  </nav>
  <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel" style="background-color: grey">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators1" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators1" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="carousel-item active"> <img src="images/NITD.jpg" alt="First slide" width="750" height="500" class="d-block mx-auto img-fluid image-fill">
        <div class="carousel-caption">
          
        </div>
      </div>
      <div class="carousel-item"> <img src="images/IMG_1919-01 (1).jpeg" alt="Second slide" width="750" height="499" class="d-block mx-auto img-fluid image-fill">
        <div class="carousel-caption">
          
        </div>
      </div>
      <div class="carousel-item"> <img src="images/sad.jpeg" alt="Third slide" width="870" height="510" class="d-block mx-auto img-fluid image-fill">
        <div class="carousel-caption">
         
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
  <article>
    <h1>Life in Hostel</h1>
    <h3>INTRODUCTION:</h3>
    <p>It is said that home is sweet. But even then, life at home cannot be compared to your life at hostel.

There is a vast difference between living in a secured and protected environment, with your family for almost 18 years and in a free and independent environment, with no familiar faces. It is a sudden jump, and initially, you may feel homesick sometimes and dislike the surroundings, but eventually, as you make new friends and adapt to the atmosphere, you will live some of the best days of your lives there, considering you don’t misuse the ample amount of freedom you have and indulge in rough activities.

With so many activities, events, competitions and festival celebrations going on in the hostel throughout the year, the atmosphere becomes vibrant and full of life. Not only do you develop a number of connections, but also become smart, active, disciplined and self-dependent. This is the phase of life when you transform from a kid to a man. So choose your path carefully, be in the right company of people and enjoy the pleasant journey you are going to be a part of</p>
<h3>ACTIVTIES, EVENTS AND HOUSE DAY:</h3>
<p>
  here are a number of activities and events held in the hostels throughout the year, both inter and intra. Events related to each and every extra-curricular activity are held regularly and students of all years are encouraged to participate in them.

So if you have a talent, it won’t get unnoticed. Other than this, every hostel celebrates its annual House Day, to give the passing out batch a memorable farewell, in which the entire hostel is decorated and a number of activities take place.

Moreover, it is the only day of the year when girls are allowed in boys’ hostel and vice-versa. So House Day is one day which you don’t want to miss.
</p>
    
  </article> 
</div>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.4.1.js"></script>
</body>
</html>

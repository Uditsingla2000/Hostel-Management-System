<!DOCTYPE html>
<html>
  <head>
    <title>Simple login form</title>
    
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    
    <style>
      html, body {
      display: flex;
      justify-content: center;
      font-family: Roboto, Arial, sans-serif;
      font-size: 15px;
      
      }
      form {
      border: 5px solid #f1f1f1;
      }
      input[type=text], input[type=password] {
      width: 100%;
      padding: 16px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }
      button {
      background-color: #8ebf42;
      color: white;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      cursor: grabbing;
      width: 100%;
      }
      h1 {
      text-align:center;
      fone-size:18;
      }
      button:hover {
      opacity: 0.8;
      }
      .formcontainer {
      text-align: left;
      margin: 24px 50px 12px;
      }
      .container {
      padding: 16px 0;
      text-align:left;
      }
      span.psw {
      float: right;
      padding-top: 0;
      padding-right: 15px;
      }
      /* Change styles for span on extra small screens */
      @media screen and (max-width: 300px) {
      span.psw {
      display: block;
      float: none;
      }
    </style>
  </head>
  <body>
    
    <form action="MESSPHPFile.php" method="POST" >
      <button type="button" class="btn btn-dark btn-lg" onclick="window.location.href='mess.php'" >Home</button>
      <h1>Search By</h1>
      <div class="formcontainer">
      <hr/>
      <div class="container">
        <label for="rollno"><strong>Roll Number</strong></label>
        <input id="rollno" type="text" placeholder="Enter Roll Number" name= "rollno" >
        <h1>OR</h1>
        <label for="hostel_id"><strong>Hostel Id</strong></label>
        <input id="hostel_id" type="text" placeholder="Enter Hostel Id" name="hostel_id" >
      </div>
      <button type="Submit" name="Submit" >Search</button>

</form>
  </body>
</html>
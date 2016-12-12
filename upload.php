<?php  
//print_r($_POST); 
//print_r($_FILES); 

//This code works for both an array of uploads and a single file.
//if it's multiple files...
if(is_array($_FILES["images"]["error"])){
	$count=0;
	foreach ($_FILES["images"]["error"]  as $error) {
	      $name = $_FILES["images"]["name"][$count];  
      	      echo "uploads/".$name;    
      	      //move he temp file to a final destination. Make sure server has WRITE PERMISSION (and folder exists)!!
      	  	  move_uploaded_file( $_FILES["images"]["tmp_name"][$count], "uploads/" . $name) or die("error");  
              $count++;
	}      
}
else{
//if it's a single file being uploaded.
     if ($_FILES["images"]["error"] == UPLOAD_ERR_OK) {  
      $name = $_FILES["images"]["name"];  
      echo "uploads/".$name;     
	        move_uploaded_file( $_FILES["images"]["tmp_name"], "uploads/" . $_FILES["images"]['name']) or die("error");  
        }    
     } 
    //echo "<h2>Successfully Uploaded Images</h2>";  
?>
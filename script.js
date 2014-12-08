$(document).ready(function(){
$("#submit").click(function(){
var income = $("#income").val();
var category = $("#category").val();
var description = $("#description").val();
var date = $("#date").val();
var time = $("#time").val();
// Returns successful data submission message when the entered information is stored in database.
var dataString = 'expense='+ expense + '&category='+ category + '&description='+ description + '&date='+ date + '&time='+ time;
print("yahoo");
if(income==''||category==''||description==''||date==''||time=='')
{
alert("Please Fill All Fields");
}
else
{
// AJAX Code To Submit Form.
$.ajax({
type: "POST",
url: "database/addexpense_db.php",
data: dataString,
cache: false,
success: function(result){
alert(result);
}
});
}
return false;
});
});
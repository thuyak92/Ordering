$(document).ready(function(){

  function applyAll(table, col, inputType, fromRow, toRow){
    var value = "";
    index = col.index();
    switch (inputType){
      case 1:
        value = col.find("input").val();
      break;
      case 2:
        value = col.find("select option:selected").text();
      break;
      case 3:
      break;
      default:
      alert("Sorry, can't apply to all!");
    }
    if(value == ""){
      return
    }
    
    table.find("tr").each(function(){
      if ($(this).index() <= fromRow) {
        return;
      };
      if ($(this).index() > toRow && toRow >= 0) {
        return;
      };
      $(this).find("td:eq("+index+")").text(value);
    });
  }

  if($("#targetTable").length){
    $("#targetTable").on("click", ".applyAll", function(){
      table = $(this).closest("table");
      skipIndex = $(this).closest("tr").index();
      td = $(this).closest("td");
      inputType = $(this).data("type");

      applyAll(table, td, inputType, skipIndex, -1);
    });
  }

});
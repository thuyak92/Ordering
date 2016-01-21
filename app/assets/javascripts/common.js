$(document).ready(function(){

  if($("#targetTable").length){

    var typeInput = 1, typeDrop = 2;

    function applyAllInputText(){
      value = td.find("input").val();
      if(value == ""){
        return
      }
      $("#targetTable tr").each(function(){
        if ($(this).index() <= skipIndex) {
          return 
        }
        $(this).find("td:eq("+index+")").text(value);
      });
    }

    function applyAllDropdown(){
      console.log("huehue");
    }

    $("#targetTable").on("click", ".applyAll", function(){

      skipIndex = $(this).closest("tr").index();
      td = $(this).closest("td");
      index = td.index();
      switch ($(this).data("type")){
        case typeInput:
          applyAllInputText();
          break;
        case typeInput:
          applyAllDropdown();
          break;
        default:
          console.log("Sorry, we are out of .");
      }
    });
  }

});
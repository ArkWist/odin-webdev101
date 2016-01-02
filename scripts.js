
$(document).ready(function(){

	var controlPanel = '<div id="control-panel"></div>';
	$("body").prepend(controlPanel);
	var controlButton = '<button type="button">Restart</button>';
	$("#control-panel").append(controlButton);

	var gridW = 16;
	var gridH = 16;

	for(var i = 0; i < gridH; i++){
		var row = document.createElement("div");
		row.className = "grid-row";
		for(var j = 0; j < gridW; j++){
			var cell = document.createElement("div");
			cell.className = "grid-cell";
			$(row).append(cell);
		}
		$("#grid-container").append(row);
	}

	$(".grid-cell").hover(function(){
		$(this).addClass("grid-hover");
	});

});


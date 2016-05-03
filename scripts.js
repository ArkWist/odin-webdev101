
$(document).ready(function(){

	var gridWidth = 16;
	var gridHeight = 16;
	var containerDimension = 600;
	var cellOverflowCorrection = .001;

	// Create cells that fit within the grid container dimensions.
	var createGrid = function(gridWidth, gridHeight){
		var cellWidth = containerDimension / gridWidth - cellOverflowCorrection;
		var cellHeight = containerDimension / gridHeight - cellOverflowCorrection;
		console.log("gridWidth: "+gridWidth+", gridHeight: "+gridHeight);
		console.log("cellWidth: "+cellWidth+", cellHeight: "+cellHeight);
		for(var i = 0; i < gridHeight; i++){
			var row = document.createElement("div");
			row.className = "grid-row";
			for(var j = 0; j < gridWidth; j++){
				var cell = document.createElement("div");
				cell.className = "grid-cell";
				$(cell).css({"width":cellWidth, "height":cellHeight});
				$(row).append(cell);
			}
			$("#grid-container").append(row);
		}
	};

	var clearGrid = function(){
		$("#grid-container").empty();
	};

	$(document).on('click', '#new-grid', function(){
		gridWidth = prompt("Enter horizontal cell count");
		gridHeight = prompt("Enter vertical cell count");
		clearGrid();
		createGrid(gridWidth, gridHeight);
	});

	$(document).on('mouseover', '.grid-cell', function(){
		$(this).addClass("grid-hover");
	});

	// Create a starter grid and New Grid controls.
	var controlPanel = '<div id="control-panel"></div>';
	$("body").prepend(controlPanel);
	var controlButton = '<button type="button" id="new-grid">New Grid</button>';
	$("#control-panel").append(controlButton);
	$("#grid-container").css({"width":containerDimension, "height":containerDimension});
	createGrid(gridWidth, gridHeight);

});


/**
 * jQuery Banner Rotator 
 * Copyright (c) 2012 Allan Ma (http://codecanyon.net/user/webtako)
 * Version: 1.71 (02/14/2012)
 */
;(function($) {
	var INSIDE = "inside";
	var OUTSIDE = "outside";
	var PREV = 0;
	var NEXT = 1;
	var ALIGN = {"TL":0, "TC":1, "TR":2, "BL":3, "BC":4, "BR":5, "LT":6, "LC":7, "LB":8, "RT":9, "RC":10,"RB":11};
	var ei = 0;
	var EFFECTS = {			
		"block.top":ei++,
		"block.right":ei++,
		"block.bottom":ei++,
		"block.left":ei++,
		"block.drop":ei++,
		"diag.fade":ei++,
		"diag.exp":ei++,
		"rev.diag.fade":ei++,
		"rev.diag.exp":ei++,
		"block.fade":ei++,
		"block.exp":ei++,
		"block.top.zz":ei++,
		"block.bottom.zz":ei++,
		"block.left.zz":ei++,
		"block.right.zz":ei++,
		"spiral.in":ei++,
		"spiral.out":ei++,
		"vert.tl":ei++,
		"vert.tr":ei++,
		"vert.bl":ei++,
		"vert.br":ei++,
		"fade.left":ei++,
		"fade.right":ei++,	
		"alt.left":ei++,
		"alt.right":ei++,
		"blinds.left":ei++,
		"blinds.right":ei++,
		"vert.random.fade":ei++,
		"horz.tl":ei++,
		"horz.tr":ei++,
		"horz.bl":ei++,
		"horz.br":ei++,
		"fade.top":ei++,
		"fade.bottom":ei++,
		"alt.top":ei++,
		"alt.bottom":ei++,
		"blinds.top":ei++, 
		"blinds.bottom":ei++,
		"horz.random.fade":ei++,
		"none":ei++,
		"fade":ei++,
		"h.slide":ei++,
		"v.slide":ei++,
		"random":ei++
	};
	var TEXT_EFFECTS = {"fade":0, "down":1, "right":2, "up":3, "left":4, "none":5}
	var LIMIT = 250;
	var BLOCK_SIZE = 75;
	var STRIPE_SIZE = 50;
	var DEFAULT_DELAY = 5000;
	var DURATION = 800;
	var ANIMATE_SPEED = 500;
	var TOOLTIP_DELAY = 600;
	var SCROLL_RATE = 4;
	var SWIPE_MIN = 50;
	var UPDATE_TEXT = "updatetext";
	var UPDATE_LIST = "updatelist";
	var MSIE7_BELOW = msieCheck(7);
	
	//Vertical Stripes
	function VertStripes(rotator) {
		this._$stripes;
		this._arr;
		this._total;
		this._intervalId = null;
		this._rotator = rotator;
		this._areaWidth = rotator._screenWidth;
		this._areaHeight = rotator._screenHeight;
		this._size = rotator._vertSize;
		this._delay = rotator._vertDelay;
	
		this.init();
	}
	
	//init stripes
	VertStripes.prototype.init = function() {
		this._total = Math.ceil(this._areaWidth/this._size);
		if (this._total > LIMIT) {
			this._size = Math.ceil(this._areaWidth/LIMIT);
			this._total = Math.ceil(this._areaWidth/this._size);
		}
		var divs = "";
		for (var i = 0; i < this._total; i++) {
			divs += "<div class='vpiece' id='" + i + "' style='left:" + (i * this._size) + "px; height:" + this._areaHeight + "px'></div>";
		}					
		this._rotator.addToScreen(divs);
		
		this._$stripes = this._rotator._$obj.find("div.vpiece");
		this._arr = this._$stripes.toArray();
	}

	//clear animation
	VertStripes.prototype.clear = function() {
		clearInterval(this._intervalId);
		this._intervalId = null;
		this._$stripes.stop(true).css({"z-index":2, opacity:0});
	}
	
	//display content
	VertStripes.prototype.displayContent = function($img, effect) {
		this.setPieces($img, effect);
		if (effect == EFFECTS["vert.random.fade"]) {
			this.animateRandom($img);
		}
		else {
			this.animate($img, effect);
		}
	}			
	
	//set image stripes
	VertStripes.prototype.setPieces = function($img, effect) {
		switch (effect) {
			case EFFECTS["vert.tl"]:
			case EFFECTS["vert.tr"]:
				this.setVertPieces($img, -this._areaHeight, 1, this._size, false);
				break;
			case EFFECTS["vert.bl"]:
			case EFFECTS["vert.br"]:
				this.setVertPieces($img, this._areaHeight, 1, this._size, false);
				break;
			case EFFECTS["alt.left"]:
			case EFFECTS["alt.right"]:
				this.setVertPieces($img, 0, 1, this._size, true);
				break;
			case EFFECTS["blinds.left"]:
			case EFFECTS["blinds.right"]:
				this.setVertPieces($img, 0, 1, 0, false);
				break;
			default:
				this.setVertPieces($img, 0, 0, this._size, false);
		}
	}
	
	//set vertical stripes
	VertStripes.prototype.setVertPieces = function($img, topPos, opacity, width, alt) {
		var imgSrc = $img.attr("src");
		var tOffset = 0;
		var lOffset = 0;
		if (this._rotator._autoCenter) {
			tOffset = (this._areaHeight - $img.height())/2;
			lOffset = (this._areaWidth - $img.width())/2;
		}
		
		for (var i = 0; i < this._total; i++) {
			var $strip = this._$stripes.eq(i);
			var xPos =  ((-i * this._size) + lOffset);
			if (alt) {
				topPos = (i%2) == 0 ? -this._areaHeight: this._areaHeight;
			}
			$strip.css({background:"url('"+ imgSrc +"') no-repeat", backgroundPosition:xPos + "px " + tOffset + "px", opacity:opacity, top:topPos, width:width, "z-index":3});
		}
	}
	
	//animate stripes			
	VertStripes.prototype.animate = function($img, effect) {
		var that = this;
		var start, end, incr, limit;
		switch (effect) {
			case EFFECTS["vert.tl"]:   case EFFECTS["vert.bl"]: 
			case EFFECTS["fade.left"]: case EFFECTS["blinds.left"]: 
			case EFFECTS["alt.left"]:
				start = 0;
				end = this._total - 1;
				incr = 1;
				break;
			default:
				start = this._total - 1;
				end = 0;
				incr = -1;
		}
		
		this._intervalId = setInterval(
			function() {
				that._$stripes.eq(start).animate({top:0, opacity:1, width:that._size}, that._rotator._duration, that._rotator._easing,
					function() {
						if ($(this).attr("id") == end) {
							that._rotator.showContent($img);
						}
					}
				);
				if (start == end) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
				start += incr;
			}, this._delay);

	}
	
	//animate random fade 
	VertStripes.prototype.animateRandom = function($img) {		
		var that = this;
		shuffleArray(this._arr);
		var i = 0;
		var count = 0;
		this._intervalId = setInterval(
			function() {
				$(that._arr[i++]).animate({opacity:1}, that._rotator._duration, that._rotator._easing,
						function() {
							if (++count == that._total) {
								that._rotator.showContent($img);
							}
						});
				if (i == that._total) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
			}, this._delay);
	}
		
	//Horizontal Stripes
	function HorzStripes(rotator) {
		this._$stripes;
		this._arr;
		this._total;
		this._intervalId = null;
		this._rotator = rotator;
		this._areaWidth = rotator._screenWidth;
		this._areaHeight = rotator._screenHeight;
		this._size = rotator._horzSize;
		this._delay = rotator._horzDelay;
		
		this.init();
	}
	
	//init stripes
	HorzStripes.prototype.init = function() {			
		this._total = Math.ceil(this._areaHeight/this._size);
		if (this._total > LIMIT) {
			this._size = Math.ceil(this._areaHeight/LIMIT);
			this._total = Math.ceil(this._areaHeight/this._size);
		}
		var divs = "";
		for (var i = 0; i < this._total; i++) {
			divs += "<div class='hpiece' id='" + i + "' style='top:" + (i * this._size) + "px; width:" + this._areaWidth + "px'><!-- --></div>";
		}				
		this._rotator.addToScreen(divs);
		
		this._$stripes = this._rotator._$obj.find("div.hpiece");
		this._arr = this._$stripes.toArray();
	}

	//clear animation
	HorzStripes.prototype.clear = function() {
		clearInterval(this._intervalId);
		this._intervalId = null;
		this._$stripes.stop(true).css({"z-index":2, opacity:0});
	}
	
	//display content
	HorzStripes.prototype.displayContent = function($img, effect) {
		this.setPieces($img, effect);
		if (effect == EFFECTS["horz.random.fade"]) {
			this.animateRandom($img);
		}
		else {
			this.animate($img, effect);
		}
	}			
	
	//set image stripes
	HorzStripes.prototype.setPieces = function($img, effect) {
		switch (effect) {
			case EFFECTS["horz.tr"]:
			case EFFECTS["horz.br"]:
				this.setHorzPieces($img, this._areaWidth, 1, this._size, false);
				break;
			case EFFECTS["horz.tl"]:
			case EFFECTS["horz.bl"]:
				this.setHorzPieces($img, -this._areaWidth, 1, this._size, false);
				break;
			case EFFECTS["alt.top"]:
			case EFFECTS["alt.bottom"]:
				this.setHorzPieces($img, 0, 1, this._size, true);
				break;
			case EFFECTS["blinds.top"]:
			case EFFECTS["blinds.bottom"]:
				this.setHorzPieces($img, 0, 1, 0, false);
				break;
			default:
				this.setHorzPieces($img, 0, 0, this._size, false);
		}
	}
	
	//set horizontal stripes
	HorzStripes.prototype.setHorzPieces = function($img, leftPos, opacity, height, alt) {
		var imgSrc = $img.attr("src");
		var tOffset = 0;
		var lOffset = 0;
		if (this._rotator._autoCenter) {
			tOffset = (this._areaHeight - $img.height())/2;
			lOffset = (this._areaWidth - $img.width())/2;
		}
		
		for (var i = 0; i < this._total; i++) {
			var $strip = this._$stripes.eq(i);
			var yPos = ((-i * this._size) + tOffset);
			if (alt) {
				leftPos = (i%2) == 0 ? -this._areaWidth: this._areaWidth;
			}
			$strip.css({background:"url('"+ imgSrc +"') no-repeat", backgroundPosition:lOffset + "px " + yPos + "px", opacity:opacity, left:leftPos, height:height, "z-index":3});  
		}
	}
	
	//animate stripes			
	HorzStripes.prototype.animate = function($img, effect) {
		var that = this;
		var start, end, incr;
		switch (effect) {
			case EFFECTS["horz.tl"]:  case EFFECTS["horz.tr"]: 
			case EFFECTS["fade.top"]: case EFFECTS["blinds.top"]: 
			case EFFECTS["alt.top"]:
				start = 0;
				end = this._total - 1;
				incr = 1;
				break;
			default:
				start = this._total - 1;
				end = 0;
				incr = -1;
		}
		
		this._intervalId = setInterval(
			function() {
				that._$stripes.eq(start).animate({left:0, opacity:1, height:that._size}, that._rotator._duration, that._rotator._easing,
					function() {
						if ($(this).attr("id") == end) {
							that._rotator.showContent($img);
						}
					}
				);
				if (start == end) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
				start += incr;
			}, this._delay);
	}
	
	//animate random fade 
	HorzStripes.prototype.animateRandom = function($img) {
		var that = this;
		shuffleArray(this._arr);
		var i = 0;
		var count = 0;
		this._intervalId = setInterval(
			function() {
				$(that._arr[i++]).animate({opacity:1}, that._rotator._duration, that._rotator._easing,
						function() {
							if (++count == that._total) {
								that._rotator.showContent($img);
							}
						});
				if (i == that._total) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
			}, this._delay);
	}
		
	//class Blocks
	function Blocks(rotator) {
		this._$blockArr;
		this._$blocks;
		this._arr;
		this._numRows;
		this._numCols;
		this._total;
		this._intervalId;
		this._rotator = rotator;
		this._areaWidth = rotator._screenWidth;
		this._areaHeight = rotator._screenHeight;
		this._size = rotator._blockSize;
		this._delay = rotator._blockDelay;
	
		this.init();
	}
	
	//init blocks
	Blocks.prototype.init = function() {
		this._numRows = Math.ceil(this._areaHeight/this._size);
		this._numCols = Math.ceil(this._areaWidth/this._size);
		this._total = this._numRows * this._numCols;
		if (this._total > LIMIT) {
			this._size = Math.ceil(Math.sqrt((this._areaHeight * this._areaWidth)/LIMIT));
			this._numRows = Math.ceil(this._areaHeight/this._size);
			this._numCols = Math.ceil(this._areaWidth/this._size);
			this._total = this._numRows * this._numCols;
		}
		
		var divs = "";
		for (var i = 0; i < this._numRows; i++) {					
			for (var j = 0; j < this._numCols; j++) {
				divs += "<div class='block' id='" + i + "-" + j + "'></div>";
			}
		}
		this._rotator.addToScreen(divs);
		this._$blocks = this._rotator._$obj.find("div.block");
		this._$blocks.data({tlId:"0-0", trId:"0-"+(this._numCols - 1), blId:(this._numRows - 1)+"-0", brId:(this._numRows - 1)+"-"+(this._numCols - 1)});
		
		var k = 0;
		this._arr = this._$blocks.toArray();
		this._$blockArr = new Array(this._numRows);
		for (var i = 0; i < this._numRows; i++) {
			this._$blockArr[i] = new Array(this._numCols);
			for (var j = 0; j < this._numCols; j++) {
				this._$blockArr[i][j] = this._$blocks.filter("#" + (i + "-" + j)).data("top", i * this._size);
			}
		}				
	}
	
	//clear blocks
	Blocks.prototype.clear = function() {
		clearInterval(this._intervalId);
		this._intervalId = null;
		this._$blocks.stop(true).css({"z-index":2, opacity:0});
	}
	
	//display content
	Blocks.prototype.displayContent = function($img, effect) {
		switch (effect) {
			case EFFECTS["diag.fade"]:
				this.setBlocks($img, 0, this._size, 0);
				this.diagAnimate($img, {opacity:1}, false);
				break;
			case EFFECTS["diag.exp"]:
				this.setBlocks($img, 0, 0, 0);
				this.diagAnimate($img, {opacity:1, width:this._size, height:this._size}, false);
				break;
			case EFFECTS["rev.diag.fade"]:
				this.setBlocks($img, 0, this._size, 0);
				this.diagAnimate($img, {opacity:1}, true);
				break;
			case EFFECTS["rev.diag.exp"]:
				this.setBlocks($img, 0, 0, 0);
				this.diagAnimate($img, {opacity:1, width:this._size, height:this._size}, true);
				break;
			case EFFECTS["block.fade"]:
				this.setBlocks($img, 0, this._size, 0);
				this.randomAnimate($img);
				break;
			case EFFECTS["block.exp"]:
				this.setBlocks($img, 1, 0, 0);
				this.randomAnimate($img);
				break; 
			case EFFECTS["block.drop"]:
				this.setBlocks($img, 1, this._size, -(this._numRows * this._size));
				this.randomAnimate($img);
				break;
			case EFFECTS["block.top.zz"]: 
			case EFFECTS["block.bottom.zz"]:
			case EFFECTS["block.left.zz"]: 
			case EFFECTS["block.right.zz"]:
				this.setBlocks($img, 0, this._size, 0);
				this.zigZag($img, effect);
				break;
			case EFFECTS["spiral.in"]:
				this.setBlocks($img, 0, this._size, 0);
				this.spiral($img, false);
				break;
			case EFFECTS["spiral.out"]:
				this.setBlocks($img, 0, this._size, 0);
				this.spiral($img, true);
				break;
			default:
				this.setBlocks($img, 1, 0, 0);
				this.dirAnimate($img, effect);
		}
	}
	
	//set blocks 
	Blocks.prototype.setBlocks = function($img, opacity, size, tPos) {
		var tOffset = 0;
		var lOffset = 0;
		if (this._rotator._autoCenter) {
			tOffset = (this._areaHeight - $img.height())/2;
			lOffset = (this._areaWidth - $img.width())/2;
		}
		var imgSrc = $img.attr("src");
		for (var i = 0; i < this._numRows; i++) {							
			for (var j = 0; j < this._numCols; j++) {
				var tVal = ((-i * this._size) + tOffset);
				var lVal = ((-j * this._size) + lOffset);
				this._$blockArr[i][j].css({background:"url('"+ imgSrc +"') no-repeat", backgroundPosition:lVal + "px " + tVal + "px", 
										   opacity:opacity, top:(i * this._size) + tPos, left:(j * this._size), width:size, height:size, "z-index":3});
			}					
		}
	}
	
	//diagonal effect
	Blocks.prototype.diagAnimate = function($img, props, rev) {
		var $array = new Array(this._total);
		var start, end, incr, lastId;
		var diagSpan = (this._numRows - 1) + (this._numCols - 1);
		if (rev) {				
			start = diagSpan;
			end = -1;
			incr = -1;
			lastId = this._$blocks.data("tlId");
		}
		else {
			start = 0;
			end = diagSpan + 1;
			incr = 1;
			lastId = this._$blocks.data("brId");
		}
		
		var count = 0;
		while (start != end) {
			i = Math.min(this._numRows - 1, start);
			while(i >= 0) {			
				j = Math.abs(i - start);
				if (j >= this._numCols) {
					break;
				}
				$array[count++] = this._$blockArr[i][j];
				i--;
			}
			start+=incr;
		}
		
		count = 0;
		var that = this;
		this._intervalId = setInterval(
			function() {
				$array[count++].animate(props, that._rotator._duration, that._rotator._easing,
						function() {
							if ($(this).attr("id") == lastId) {
								that._rotator.showContent($img);
							}
						});
				if (count == that._total) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}			
			}, this._delay);
	}

	//zig zag effect
	Blocks.prototype.zigZag = function($img, effect) {
		var that = this;
		var fwd = true;
		var i = 0, j = 0, incr, lastId, horz;
		if (effect == EFFECTS["block.left.zz"]) {
			lastId = (this._numCols%2 == 0) ? this._$blocks.data("trId") : this._$blocks.data("brId");
			j = 0;
			incr = 1;
			horz = false;
		}
		else if (effect == EFFECTS["block.right.zz"]) {
			lastId = (this._numCols%2 == 0) ? this._$blocks.data("tlId") : this._$blocks.data("blId");
			j = this._numCols - 1;
			incr = -1;
			horz = false;
		}
		else if (effect == EFFECTS["block.top.zz"]) {
			lastId = (this._numRows%2 == 0) ? this._$blocks.data("blId") : this._$blocks.data("brId");
			i = 0;
			incr = 1;
			horz = true;
		}
		else {
			lastId = (this._numRows%2 == 0) ? this._$blocks.data("tlId") : this._$blocks.data("trId");
			i = this._numRows - 1;
			incr = -1;
			horz = true;
		}
		
		this._intervalId = setInterval(
			function() {
				that._$blockArr[i][j].animate({opacity:1}, that._duration, that._rotator._easing,
						function() {
							if ($(this).attr("id") == lastId) {
								that._rotator.showContent($img);
							}});
				
				if (that._$blockArr[i][j].attr("id") == lastId) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
				
				if (horz) {
					(fwd ? j++ : j--);
					if (j == that._numCols || j < 0) {
						fwd = !fwd;
						j = (fwd ? 0 : that._numCols - 1);
						i+=incr;
					}						
				}
				else {
					(fwd ? i++ : i--);
					if (i == that._numRows || i < 0) {
						fwd = !fwd;
						i = (fwd ? 0 : that._numRows - 1);
						j+=incr;
					}
				}
			}, this._delay);
	}
		
	//vertical direction effect
	Blocks.prototype.dirAnimate = function($img, effect) {
		var $array = new Array(this._total);
		var lastId;
		var count = 0;
		switch (effect) {
			case EFFECTS["block.left"]:
				lastId = this._$blocks.data("brId");
				for (var j = 0; j < this._numCols; j++) {
					for (var i = 0; i < this._numRows; i++) {
						$array[count++] = this._$blockArr[i][j];
					}
				}
				break;
			case EFFECTS["block.right"]:
				lastId = this._$blocks.data("blId");
				for (var j = this._numCols - 1; j >= 0; j--) {
					for (var i = 0; i < this._numRows; i++) {
						$array[count++] = this._$blockArr[i][j];
					}
				}					
				break;
			case EFFECTS["block.top"]:
				lastId = this._$blocks.data("brId");
				for (var i = 0; i < this._numRows; i++) {
					for (var j = 0; j < this._numCols; j++) {
						$array[count++] = this._$blockArr[i][j];
					}
				}					
				break;
			default:
				lastId = this._$blocks.data("trId");
				for (var i = this._numRows - 1; i >= 0; i--) {
					for (var j = 0; j < this._numCols; j++) {
						$array[count++] = this._$blockArr[i][j];
					}
				}
		}
		count = 0;
		var that = this;
		this._intervalId = setInterval(
			function() {
				$array[count++].animate({width:that._size, height:that._size}, that._rotator._duration, that._rotator._easing,
						function() {
							if ($(this).attr("id") == lastId) {
								that._rotator.showContent($img);
							}
						});
				if (count == that._total) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
			}, this._delay);
	}
	
	//random block effect
	Blocks.prototype.randomAnimate = function($img) {
		shuffleArray(this._arr);
		var i = 0;
		count = 0;
		var that = this;
		this._intervalId = setInterval(
			function() {
				$(that._arr[i]).animate({top:$(that._arr[i]).data("top"), width:that._size, height:that._size, opacity:1}, that._rotator._duration, that._rotator._easing,
						function() {
							if (++count == that._total) {
								that._rotator.showContent($img);
							}
						});
				i++;
				if (i == that._total) {
					clearInterval(that._intervalId);
					that._intervalId = null;
				}
			}, this._delay);
	}
	
	//spiral effect
	Blocks.prototype.spiral = function($img, spiralOut) {			
		var i = 0, j = 0;
		var rowCount = this._numRows - 1;
		var colCount = this._numCols - 1;
		var dir = 0;
		var limit = colCount;
		var $array = new Array();
		while (rowCount >= 0 && colCount >=0) {
			var count = 0; 
			while(true) { 
				$array[$array.length] = this._$blockArr[i][j];
				if ((++count) > limit) {
					break;
				}
				switch(dir) {
					case 0:
						j++;
						break;
					case 1:
						i++;
						break;
					case 2:
						j--;
						break;
					case 3:
						i--;
				}
			} 
			switch(dir) {
				case 0:
					dir = 1;
					limit = (--rowCount);
					i++;
					break;
				case 1:
					dir = 2;
					limit = (--colCount);
					j--;
					break;
				case 2:
					dir = 3;
					limit = (--rowCount);
					i--;
					break;
				case 3:
					dir = 0;
					limit = (--colCount);
					j++;
			}
		}
		if ($array.length > 0) {
			if (spiralOut) {
				$array.reverse();
			}
			var end = $array.length - 1;
			var lastId = $array[end].attr("id");
			var k = 0;
			var that = this;
			this._intervalId = setInterval(
				function() {
					$array[k].animate({opacity:1}, that._rotator._duration, that._rotator._easing,
						function() {
							if ($(this).attr("id") == lastId) {
								that._rotator.showContent($img);
							}
						});
					if (k == end) {
						clearInterval(that._intervalId);
						that._intervalId = null;
					}	
					k++;
				}, this._delay);
		}
	}
	
	//class Rotator
	function Rotator($obj, opts) {
		//set options
		this._screenWidth =  	getPosNumber(opts.width, 825);
		this._screenHeight = 	getPosNumber(opts.height, 300);
		this._margin = 			getNonNegNumber(opts.button_margin, 4);
		this._globalEffect = 	opts.transition.toLowerCase();
		this._duration =   		getPosNumber(opts.transition_speed, DURATION);
		this._globalDelay = 	getPosNumber(opts.delay, DEFAULT_DELAY);
		this._rotate = 			opts.auto_start;
		this._cpPos =			opts.cpanel_position.toLowerCase();
		this._cpAlign = 		opts.cpanel_align.toUpperCase();
		this._thumbWidth =		getPosNumber(opts.thumb_width, 24);
		this._thumbHeight = 	getPosNumber(opts.thumb_height, 24);
		this._buttonWidth =  	getPosNumber(opts.button_width, 24);
		this._buttonHeight =	getPosNumber(opts.button_height, 24);
		this._displayThumbImg = opts.display_thumbimg;
		this._displayThumbs = 	opts.display_thumbs;
		this._displaySideBtns = opts.display_side_buttons;
		this._displayDBtns = 	opts.display_dbuttons;
		this._displayPlayBtn =  opts.display_playbutton;
		this._displayNumbers = 	opts.display_numbers;
		this._displayTimer =	opts.display_timer;
		this._cpMouseover = 	window.Touch ? false : opts.cpanel_mouseover;
		this._textMousover = 	window.Touch ? false : opts.text_mouseover;
		this._pauseMouseover = 	window.Touch ? false : opts.mouseover_pause;
		this._mouseoverSelect =	window.Touch ? false : opts.mouseover_select;
		this._tipType = 		opts.tooltip_type.toLowerCase();
		this._textEffect = 		opts.text_effect.toLowerCase();
		this._textSync =		opts.text_sync;
		this._playOnce =		opts.play_once;
		this._autoCenter =		opts.auto_center;
		this._easing =			opts.easing;
		this._timerAlign = 		opts.timer_align.toLowerCase();
		this._shuffle = 		opts.shuffle;
		this._mousewheelScroll = opts.mousewheel_scroll;
		this._vertSize = 		getPosNumber(opts.vert_size, STRIPE_SIZE);
		this._horzSize = 		getPosNumber(opts.horz_size, STRIPE_SIZE);
		this._blockSize = 		getPosNumber(opts.block_size, BLOCK_SIZE);
		this._vertDelay = 		getPosNumber(opts.vstripe_delay, 75);
		this._horzDelay = 		getPosNumber(opts.hstripe_delay, 75);
		this._blockDelay = 		getPosNumber(opts.block_delay, 25);
	
		this._numItems;
		this._currIndex;
		this._prevIndex;
		this._delay;
		this._vStripes;
		this._hStripes;
		this._blocks;
		this._timerId;
		this._blockEffect;
		this._hStripeEffect;
		this._vStripeEffect;
		this._dir;
		this._cpVertical;
		this._slideCoord;
		
		this._$rotator;
		this._$screen;
		this._$strip;
		this._$mainLink;
		this._$textBox;
		this._$preloader;
		this._$cpWrapper;
		this._$cpanel;
		this._$thumbPanel;
		this._$list;
		this._$thumbs;
		this._$buttonPanel;
		this._$playBtn;
		this._$sPrev;
		this._$sNext;
		this._$timer;
		this._$tooltip;
		this._$items;
		this._$innerText;
		
		this._$obj = $obj;
		this.init();

	}	

	//init rotator
	Rotator.prototype.init = function() {
		this._$rotator = this._$obj.find(".wt-rotator");
		this._$screen = this._$rotator.find("div.screen");
		this._$cpanel = this._$rotator.find("div.c-panel");
		this._$buttonPanel = this._$cpanel.find("div.buttons");
		this._$thumbPanel = this._$cpanel.find("div.thumbnails");
		this._$list = this._$thumbPanel.find(">ul")
		this._$thumbs 	= this._$list.find(">li");
		
		this._timerId = null;
		this._currIndex = 0;
		this._prevIndex = -1;
		this._numItems = this._$thumbs.size();
		this._$items = new Array(this._numItems);
		this._blockEffect = this._hStripeEffect = this._vStripeEffect = false;
		this.checkEffect(EFFECTS[this._globalEffect]);
		this._cpVertical = ALIGN[this._cpAlign] >= ALIGN["LT"] ? true : false;
		
		if (this._numItems <= 1) {
			this._rotate = this._displaySideBtns = this._displayDBtns = this._displayPlayBtn = this._displayTimer = this._mousewheelScroll = this._pauseMouseover = false;
		}
		
		if (this._displaySideBtns) {
			this._displayDBtns = false;
		}
		if (this._displayThumbImg) {
			this._displayNumbers = false;
			if (this._tipType == "image") {
				this._tipType = "none";
			}
		}
		if (this._shuffle) {
			this.shuffleItems();
		}
		
		this._$rotator.css({width:this._screenWidth, height:this._screenHeight});
		//init components
		this.initScreen();
		this.initButtons();
		this.initItems();
		this.initCPanel();
		this.initTimerBar();
		
		if (this._textMousover) {
			this._$rotator.bind("mouseenter", {elem:this}, this.displayText).bind("mouseleave", {elem:this}, this.hideText);
		}
		else {
			this._$rotator.bind(UPDATE_TEXT, {elem:this}, this.updateText);
		}
		
		//init transition components
		if (this._vStripeEffect) {
			this._vStripes = new VertStripes(this);
		}
		if (this._hStripeEffect) {
			this._hStripes = new HorzStripes(this);
		}
		if (this._blockEffect) {
			this._blocks = new Blocks(this);
		}
		
		if (window.Touch) {
			this._slideCoord = {start:-1, end:-1};
			if (this._globalEffect == "v.slide"){
				this._$rotator.bind("touchstart", {elem:this}, this.touchVStart).bind("touchmove", {elem:this}, this.touchVMove)
			}
			else {
				this._$rotator.bind("touchstart", {elem:this}, this.touchStart).bind("touchmove", {elem:this}, this.touchMove)
			}
			this._$rotator.bind("touchend", {elem:this}, this.touchEnd);
		}
		else if (this._mousewheelScroll) {
			try {
				this._$rotator.bind("mousewheel", {elem:this}, this.mouseScrollContent).bind("DOMMouseScroll", {elem:this}, this.mouseScrollContent);
			}
			catch(ex) {}
		}	
		
		//init image loading
		if (!msieCheck(6)) {
			this.loadImg(0);
		}
		
		//display initial image
		this.loadContent(this._currIndex);
	}
	
	Rotator.prototype.touchStart = function(e) {
		e.data.elem._slideCoord.start = e.originalEvent.touches[0].pageX; 
	}
	
	Rotator.prototype.touchMove = function(e) {
		e.preventDefault();
		e.data.elem._slideCoord.end = e.originalEvent.touches[0].pageX;
	}
	
	Rotator.prototype.touchVStart = function(e) {
		e.data.elem._slideCoord.start = e.originalEvent.touches[0].pageY; 
	}
	
	Rotator.prototype.touchVMove = function(e) {
		e.preventDefault();
		e.data.elem._slideCoord.end = e.originalEvent.touches[0].pageY;
	}
	
	Rotator.prototype.touchEnd = function(e) {
		var that = e.data.elem;
		if (that._slideCoord.end >= 0) {
			if (Math.abs(that._slideCoord.start - that._slideCoord.end) > SWIPE_MIN) {
				if (that._slideCoord.end < that._slideCoord.start) {
					that.nextImg();
				}
				else {
					that.prevImg();
				}
			}
		}
		that._slideCoord.start = that._slideCoord.end = -1;
	}
	
	//add to screen
	Rotator.prototype.addToScreen = function(content) {
		this._$mainLink.append(content);
	}
	
	//init screen
	Rotator.prototype.initScreen = function() {
		var content =  "<div class='desc'><div class='inner-bg'></div><div class='inner-text'></div></div>\
						<div class='preloader'></div>\
						<div class='timer'></div>";
		this._$screen.append(content);
		this._$textBox 	= this._$screen.find("div.desc");
		this._$preloader 	= this._$screen.find("div.preloader");
		this._$screen.css({width:this._screenWidth, height:this._screenHeight});
		this._$innerText = this._$textBox.find("div.inner-text");
		
		this._$strip = $("<div class='strip'></div>");
		if (this._globalEffect == "h.slide") {
			this._$screen.append(this._$strip);
			this._$strip.css({width:2*this._screenWidth, height:this._screenHeight});
			this._$thumbs.removeAttr("effect");
		}
		else if (this._globalEffect == "v.slide"){
			this._$screen.append(this._$strip);
			this._$strip.css({width:this._screenWidth, height:2*this._screenHeight});
			this._$thumbs.removeAttr("effect");
		}
		else {
			this._$screen.append("<a href='#'></a>");
			this._$mainLink = this._$screen.find(">a:first");
		}
	}
	
	//init control panel
	Rotator.prototype.initCPanel = function() {	
		if (this._displayThumbs || this._displayDBtns || this._displayPlayBtn) {
			if (this._cpPos == INSIDE) {
				switch (ALIGN[this._cpAlign]) {
					case ALIGN["BL"]:								
						this.setHPanel("left");
						this.setInsideHP("bottom");
						break;
					case ALIGN["BC"]:
						this.setHPanel("center");
						this.setInsideHP("bottom");
						break;
					case ALIGN["BR"]:
						this.setHPanel("right");
						this.setInsideHP("bottom");
						break;
					case ALIGN["TL"]:								
						this.setHPanel("left");
						this.setInsideHP("top");
						break;
					case ALIGN["TC"]:								
						this.setHPanel("center");
						this.setInsideHP("top");
						break;
					case ALIGN["TR"]:								
						this.setHPanel("right");
						this.setInsideHP("top");
						break;
					case ALIGN["LT"]:
						this.setVPanel("top");
						this.setInsideVP("left");
						break;
					case ALIGN["LC"]:
						this.setVPanel("center");
						this.setInsideVP("left");
						break;
					case ALIGN["LB"]:
						this.setVPanel("bottom");
						this.setInsideVP("left");
						break;
					case ALIGN["RT"]:								
						this.setVPanel("top");
						this.setInsideVP("right");
						break;
					case ALIGN["RC"]:								
						this.setVPanel("center");
						this.setInsideVP("right");
						break;
					case ALIGN["RB"]:								
						this.setVPanel("bottom");
						this.setInsideVP("right");
						break;
				}
				
				if (this._cpMouseover) {
					var dir = this._cpVertical ? "left" : "top";
					this._$rotator.bind("mouseenter", {elem:this, dir:dir}, this.displayCPanel).bind("mouseleave", {elem:this, dir:dir}, this.hideCPanel);
				}
			}
			else {
				switch (ALIGN[this._cpAlign]) {
					case ALIGN["BL"]:
						this.setHPanel("left");
						this.setOutsideHP(false);
						break;
					case ALIGN["BC"]:
						this.setHPanel("center");
						this.setOutsideHP(false);
						break;
					case ALIGN["BR"]:
						this.setHPanel("right");
						this.setOutsideHP(false);
						break;
					case ALIGN["TL"]:
						this.setHPanel("left");
						this.setOutsideHP(true);
						break;
					case ALIGN["TC"]:							
						this.setHPanel("center");
						this.setOutsideHP(true);
						break;
					case ALIGN["TR"]:
						this.setHPanel("right");
						this.setOutsideHP(true);
						break;
					case ALIGN["LT"]:
						this.setVPanel("top");
						this.setOutsideVP(true);
						break;
					case ALIGN["LC"]:
						this.setVPanel("center");
						this.setOutsideVP(true);
						break;
					case ALIGN["LB"]:								
						this.setVPanel("bottom");
						this.setOutsideVP(true);
						break;
					case ALIGN["RT"]:								
						this.setVPanel("top");
						this.setOutsideVP(false);
						break;
					case ALIGN["RC"]:								
						this.setVPanel("center");
						this.setOutsideVP(false);
						break;
					case ALIGN["RB"]:
						this.setVPanel("bottom");
						this.setOutsideVP(false);
						break;
				}
			}
			this._$cpanel.css("visibility", "visible").click(preventDefault);
		}
	}
	
	//set control panel attributes
	Rotator.prototype.setHPanel = function(align) {
		this._$cpanel.css({"margin-top":this._margin, "margin-bottom":this._margin, height:Math.max(this._$thumbPanel.outerHeight(true), this._$buttonPanel.outerHeight(true))});
		var alignPos;
		if (align == "center") {
			alignPos = Math.round((this._screenWidth - this._$cpanel.width() - this._margin)/2);
		}
		else if (align == "left") {
			alignPos = this._margin;
		}
		else {
			alignPos = this._screenWidth - this._$cpanel.width();
		}
		this._$cpanel.css("left", alignPos);
	}
	
	Rotator.prototype.setVPanel = function(align) {
		this._$cpanel.css({"margin-left":this._margin, "margin-right":this._margin, width:Math.max(this._$thumbPanel.outerWidth(true), this._$buttonPanel.outerWidth(true))});
		var alignPos;
		if (align == "center") {
			alignPos = Math.round((this._screenHeight - this._$cpanel.height() - this._margin)/2);
		}
		else if (align == "top") {
			alignPos = this._margin;
		}
		else {
			alignPos = this._screenHeight - this._$cpanel.height();
		}
		this._$cpanel.css("top", alignPos);
	}
	
	Rotator.prototype.setInsideHP = function(align) {
		var offset, alignPos;
		if (align == "top") {
			alignPos = 0;
			offset = -this._$cpanel.outerHeight(true);
		}
		else {
			alignPos = this._screenHeight - this._$cpanel.outerHeight(true);
			offset = this._screenHeight;
		}
		this._$cpanel.data({offset:offset, pos:alignPos}).css({top: (this._cpMouseover ? offset : alignPos)});
	}
	
	Rotator.prototype.setInsideVP = function(align) {
		var offset, alignPos;
		if (align == "left") {
			alignPos = 0;
			offset = -this._$cpanel.outerWidth(true);
		}
		else {
			alignPos = this._screenWidth - this._$cpanel.outerWidth(true);
			offset = this._screenWidth;
		}
		this._$cpanel.data({offset:offset, pos:alignPos}).css({left:(this._cpMouseover ? offset : alignPos)});
	}
	
	Rotator.prototype.setOutsideHP = function(top) {
		this._$cpanel.wrap("<div class='outer-hp'></div>");
		this._$cpWrapper = this._$rotator.find(".outer-hp");
		this._$cpWrapper.height(this._$cpanel.outerHeight(true));
					
		if (top) {
			this._$cpWrapper.css({"border-top":"none", top:0});
			this._$screen.css("top", this._$cpWrapper.outerHeight());
		}
		else {
			this._$cpWrapper.css({"border-bottom":"none", top:this._screenHeight});
			this._$screen.css("top", 0);
		}
		this._$rotator.css({height:this._screenHeight + this._$cpWrapper.outerHeight()});
	}
	
	Rotator.prototype.setOutsideVP = function(left) {
		this._$cpanel.wrap("<div class='outer-vp'></div>");
		this._$cpWrapper = this._$rotator.find(".outer-vp");
		this._$cpWrapper.width(this._$cpanel.outerWidth(true));
		
		if (left) {
			this._$cpWrapper.css({"border-left":"none", left:0});
			this._$screen.css("left", this._$cpWrapper.outerWidth());
		}
		else {
			this._$cpWrapper.css({"border-right":"none", left:this._screenWidth});
			this._$screen.css("left", 0);
		}
		this._$rotator.css({width:this._screenWidth + this._$cpWrapper.outerWidth()});
	}
	
	//init buttons
	Rotator.prototype.initButtons = function() {
		this._$playBtn 	= this._$buttonPanel.find("div.play-btn");
		var $prevBtn = this._$buttonPanel.find("div.prev-btn");
		var $nextBtn = this._$buttonPanel.find("div.next-btn");
	
		//config directional buttons
		if (this._displayDBtns) {
			$prevBtn.bind("click", {elem:this}, this.prevImg);
			$nextBtn.bind("click", {elem:this}, this.nextImg);
		}
		else {
			$prevBtn.hide();
			$nextBtn.hide();
		}
		
		//config play button
		if (this._displayPlayBtn) {
			this._$playBtn.toggleClass("pause", this._rotate).bind("click", {elem:this}, this.togglePlay);
		}
		else {
			this._$playBtn.hide();
		}
		
		if (this._pauseMouseover) {
			this._$rotator.bind("mouseenter", {elem:this}, this.pause).bind("mouseleave", {elem:this}, this.play);
		}
		
		if (this._displaySideBtns) {
			this._$screen.append("<div class='s-prev'></div><div class='s-next'></div>");
			this._$sPrev = this._$screen.find(".s-prev");
			this._$sNext = this._$screen.find(".s-next");
			this._$sPrev.bind("click", {elem:this}, this.prevImg).mousedown(preventDefault);
			this._$sNext.bind("click", {elem:this}, this.nextImg).mousedown(preventDefault);
			
			if (this._cpMouseover) {
				this._$sPrev.css("left",-this._$sPrev.width());
				this._$sNext.css("margin-left",0);
				this._$rotator.bind("mouseenter", {elem:this}, this.showSideButtons).bind("mouseleave", {elem:this}, this.hideSideButtons);
			}
		}
		
		var $buttons = this._$buttonPanel.find(">div").css({width:this._buttonWidth, height:this._buttonHeight}).mousedown(preventDefault);
		if (this._cpVertical) {
			$prevBtn.addClass("up");
			$nextBtn.addClass("down");
			$buttons.css("margin-bottom", this._margin);   
			this._$buttonPanel.width($buttons.outerWidth());
			if (MSIE7_BELOW) {
				this._$buttonPanel.height(this._$buttonPanel.find(">div:visible").size() * $buttons.outerHeight(true));
			}
			if (this._displayThumbs && this._thumbWidth > this._buttonWidth) {
				var m = this._thumbWidth - this._buttonWidth;
				switch (ALIGN[this._cpAlign]) {
					case ALIGN["RT"]: case ALIGN["RC"]: case ALIGN["RB"]:
						this._$buttonPanel.css("margin-left", m);
						break;
					default:
						this._$buttonPanel.css("margin-right", m);
				}
			}
		}
		else {
			$buttons.css("margin-right", this._margin);
			this._$buttonPanel.height($buttons.outerHeight());
			if (MSIE7_BELOW) {
				this._$buttonPanel.width(this._$buttonPanel.find(">div:visible").size() * $buttons.outerWidth(true));
			}
			if (this._displayThumbs && this._thumbHeight > this._buttonHeight) {
				var m = this._thumbHeight - this._buttonHeight;
				switch (ALIGN[this._cpAlign]) {
					case ALIGN["TL"]: case ALIGN["TC"]: case ALIGN["TR"]:
						this._$buttonPanel.css("margin-bottom", m);
						break;
					default:
						this._$buttonPanel.css("margin-top", m);
				}
			}
		}
	}			
	
	//init timer bar
	Rotator.prototype.initTimerBar = function() {
		this._$timer = this._$screen.find(".timer").data("pct", 1);
		if (this._displayTimer) {
			this._$timer.css("visibility", "visible");
			this._$timer.css("top", this._timerAlign == "top" ? 0 : this._screenHeight - this._$timer.height());
		}
		else {
			this._$timer.hide();
		}
	}
	
	//init items
	Rotator.prototype.initItems = function() {
		var that = this;
		var padding = this._$innerText.outerHeight() - this._$innerText.height();
		var num = this._$thumbs.size();
		for (var i = 0; i < num; i++) {
			var $thumb = this._$thumbs.eq(i);
			var $imgLink = $thumb.find(">a:first");
			var itemEffect = EFFECTS[$thumb.attr("effect")];
			if ((typeof itemEffect == "undefined") || itemEffect ==  EFFECTS["h.slide"] || itemEffect ==  EFFECTS["v.slide"]) {
				itemEffect = EFFECTS[this._globalEffect];
			}
			else {
				this.checkEffect(itemEffect);
			}
			$thumb.data({imgurl:$imgLink.attr("href"), caption:$imgLink.attr("title"), effect:itemEffect, delay:getPosNumber($thumb.attr("delay"), this._globalDelay)});
			
			this.initTextData($thumb, padding);
			this._$items[i] = $thumb;
			
			if (this._displayNumbers) {
				$thumb.append(i+1);
			}
		}
		
		this._$innerText.css({width:"auto", height:"auto"}).html("");
		this._$textBox.css("visibility", "visible");
		
		if (this._displayThumbs) {
			if (this._displayThumbImg) {
				this._$thumbs.addClass("image");
				this._$thumbs.find(">a").removeAttr("title");
				var $thumbImg = this._$thumbs.find(">a>img");
				$thumbImg.removeAttr("alt");
				var numImgs = $thumbImg.size();
				for (var i = 0; i < numImgs; i++) {
					var $img = $thumbImg.eq(i);
					if ($img[0].complete || $img[0].readyState == "complete") {
						$img.css({top:(this._thumbHeight - $img.height())/2,left:(this._thumbWidth - $img.width())/2});
					}
					else {
						$img.load(function() {
							$(this).css({top:(that._thumbHeight - $(this).height())/2,left:(that._thumbWidth - $(this).width())/2});
						});
					}
				}
			}
		
			this._$thumbs.css({width:this._thumbWidth, height:this._thumbHeight, "line-height":this._thumbHeight + "px"}).mousedown(preventDefault);
			if (this._mouseoverSelect) {
				this._$thumbs.bind("mouseover", {elem:this}, this.selectItem);
			}
			else {
				this._$thumbPanel.bind("click", {elem:this}, this.selectItem);
			}
			if (this._cpVertical) {
				this._$thumbs.css("margin-bottom", this._margin);
				this._$list.width(this._$thumbs.outerWidth());
				this._$thumbPanel.width(this._$list.width());
				if (MSIE7_BELOW) {
					this._$thumbPanel.height(this._numItems * this._$thumbs.outerHeight(true));
				}
				//check uneven size
				if ((this._displayDBtns || this._displayPlayBtn) && (this._buttonWidth > this._thumbWidth)) {
					var m = this._buttonWidth - this._thumbWidth;
					switch (ALIGN[this._cpAlign]) {
						case ALIGN["RT"]: case ALIGN["RC"]: case ALIGN["RB"]:
							this._$thumbPanel.css("margin-left", m);
							break;
						default:
							this._$thumbPanel.css("margin-right", m);
					}
				}
				
				//check overflow
				var maxHeight = this._screenHeight - (this._$buttonPanel.height() + this._margin);
				if (this._$thumbPanel.height() > maxHeight) {
					var unitSize = this._$thumbs.outerHeight(true);
					this._$list.addClass("inside").height(this._numItems * unitSize);
					this._$thumbPanel.css({height:Math.floor(maxHeight/unitSize) * unitSize - this._margin, "margin-bottom":this._margin});
					var range = this._$thumbPanel.height() - (this._$list.height() - this._margin);
					
					this._$thumbPanel.append("<div class='back-scroll'></div><div class='fwd-scroll'></div>");
					var $backScroll = this._$thumbPanel.find(".back-scroll");
					var $fwdScroll = this._$thumbPanel.find(".fwd-scroll");
					$backScroll.css({height:unitSize, width:"100%"});
					$fwdScroll.css({height:unitSize, width:"100%", top:"100%", "margin-top":-unitSize});
					
					if (!window.Touch) {
						$backScroll.bind("mouseenter", 
									function() {
										$fwdScroll.show();
										var speed = -that._$list.stop(true).position().top * SCROLL_RATE;
										that._$list.stop(true).animate({top:0}, speed, "linear", function() { $backScroll.hide(); });
									}).bind("mouseleave", {elem:this}, this.stopList);
						$fwdScroll.bind("mouseenter", 
									function() {
										$backScroll.show();
										var speed = (-range + that._$list.stop(true).position().top) * SCROLL_RATE;
										that._$list.stop(true).animate({top:range}, speed, "linear", function() { $fwdScroll.hide(); });
									}).bind("mouseleave", {elem:this}, this.stopList);
					}
					else {
						 $backScroll.hide();
						 $fwdScroll.hide();
					}
					
					this._$rotator.bind(UPDATE_LIST, function() {
						if(!that._$list.is(":animated")) {								
							var pos = that._$list.position().top + (that._currIndex * unitSize);
							if (pos < 0 || pos > that._$thumbPanel.height() - that._$thumbs.outerHeight()) {
								pos = -that._currIndex * unitSize;
								if (pos < range) {
									pos = range;
								}
								that._$list.stop(true).animate({top:pos}, ANIMATE_SPEED, 
																function() {
																	if (!window.Touch) {
																		$(this).position().top == 0 ? $backScroll.hide() : $backScroll.show();
																		$(this).position().top == range ? $fwdScroll.hide() : $fwdScroll.show();
																	}
																});
							}
						}
					});
				}
			}
			else {
				this._$thumbs.css("margin-right", this._margin);
				this._$list.height(this._$thumbs.outerHeight());
				this._$thumbPanel.height(this._$list.height());
				if (MSIE7_BELOW) {
					this._$thumbPanel.width(this._numItems * this._$thumbs.outerWidth(true));
				}
				//check uneven size
				if ((this._displayDBtns || this._displayPlayBtn) && this._buttonHeight > this._thumbHeight) {
					var m = this._buttonHeight - this._thumbHeight;
					switch (ALIGN[this._cpAlign]) {
						case ALIGN["TL"]: case ALIGN["TC"]: case ALIGN["TR"]:
							this._$thumbPanel.css("margin-bottom", m);

							break;
						default:
							this._$thumbPanel.css("margin-top", m);
					}
				}
				
				//check overflow
				var maxWidth =  this._screenWidth - (this._$buttonPanel.width() + this._margin);
				if (this._$thumbPanel.width() > maxWidth) {							
					var unitSize = this._$thumbs.outerWidth(true);
					this._$list.addClass("inside").width(this._numItems * unitSize);
					this._$thumbPanel.css({width:Math.floor(maxWidth/unitSize) * unitSize - this._margin, "margin-right":this._margin});
					var range = this._$thumbPanel.width() - (this._$list.width() - this._margin);
					
					this._$thumbPanel.append("<div class='back-scroll'></div><div class='fwd-scroll'></div>");
					var $backScroll = this._$thumbPanel.find(".back-scroll");
					var $fwdScroll = this._$thumbPanel.find(".fwd-scroll");
					$backScroll.css({width:unitSize, height:"100%"});
					$fwdScroll.css({width:unitSize, height:"100%", left:"100%", "margin-left":-unitSize});
					
					if (!window.Touch) {
						$backScroll.bind("mouseenter", 	function() {
															$fwdScroll.show();
															var speed = -that._$list.stop(true).position().left * SCROLL_RATE;
															that._$list.stop(true).animate({left:0}, speed, "linear", function() { $backScroll.hide(); });  
														}).bind("mouseleave", {elem:this}, this.stopList);
						
						$fwdScroll.bind("mouseenter", 	function() {
															$backScroll.show();
															var speed = (-range + that._$list.stop(true).position().left) * SCROLL_RATE;
															that._$list.stop(true).animate({left:range}, speed, "linear", function() { $fwdScroll.hide(); });  		  
														}).bind("mouseleave", {elem:this}, this.stopList);
					}
					
					this._$rotator.bind(UPDATE_LIST, function() {
						if(!that._$list.is(":animated")) {								
							var pos = that._$list.position().left + (that._currIndex * unitSize);
							if (pos < 0 || pos > that._$thumbPanel.width() - that._$thumbs.outerWidth()) {
								pos = -that._currIndex * unitSize;
								if (pos < range) {
									pos = range;
								}
								that._$list.stop(true).animate({left:pos}, ANIMATE_SPEED, 
																function() { 
																	$(this).position().left == 0 ? $backScroll.hide() : $backScroll.show();
																	$(this).position().left == range ? $fwdScroll.hide() : $fwdScroll.show();
																});
							}
						}
					});
				}
			}
			
			this.initTooltip();
		}
		else {
			this._$thumbs.hide();
		}
	}			
	
	//init text data
	Rotator.prototype.initTextData = function($item, padding) {				
		var $p = $item.find(">div:hidden");
		var textWidth =  getPosNumber(parseInt($p.css("width")) - padding, 300);
		var textHeight = getPosNumber(parseInt($p.css("height")) - padding, 0);
		this._$innerText.width(textWidth).html($p.html());
		if (textHeight < this._$innerText.height()) {
			textHeight = this._$innerText.height();
		}
		$item.data("textbox", {x:$p.css("left"), y:$p.css("top"), w:textWidth + padding, h:textHeight + padding + 1, color:$p.css("color"), bgcolor:$p.css("background-color")});
	}
	
	//init tool tip
	Rotator.prototype.initTooltip = function() {
		if (this._tipType == "text") {
			$("body").append("<div id='rotator-tooltip'><div class='tt-txt'></div></div>");
			this._$tooltip = $("body").find("#rotator-tooltip");
			this._$thumbs.bind("mouseover", {elem:this}, this.showTooltip).bind("mouseout", {elem:this}, this.hideTooltip).bind("mousemove", {elem:this}, this.moveTooltip);
			switch (ALIGN[this._cpAlign]) {
				case ALIGN["TL"]: case ALIGN["TC"]: case ALIGN["TR"]:
					this._$tooltip.data("bottom",true).addClass("txt-down");
					break;
				default:
					this._$tooltip.data("bottom",false).addClass("txt-up");
			}
		}
		else if (this._tipType == "image") {
			var content = "<div id='rotator-tooltip'>";
			for (var i = 0; i < this._numItems; i++) {	
				var $img = this._$items[i].find(">a:first>img");
				if ($img.size() == 1) {
					content += "<img src='" + $img.attr("src") + "' />";
				}
				else {
					content += "<img/>";
				}
			}
			content += "</div>";
			$("body").append(content);
			this._$tooltip = $("body").find("#rotator-tooltip");
			switch (ALIGN[this._cpAlign]) {
				case ALIGN["TL"]: case ALIGN["TC"]: case ALIGN["TR"]:
					this._$thumbs.bind("mouseover", {elem:this}, this.showHImgTooltip);
					this._$tooltip.data("bottom",true).addClass("img-down");
					break;
				case ALIGN["LT"]: case ALIGN["LC"]: case ALIGN["LB"]:
					this._$thumbs.bind("mouseover", {elem:this}, this.showVImgTooltip);
					this._$tooltip.data("right",true).addClass("img-right");
					break;
				case ALIGN["RT"]: case ALIGN["RC"]: case ALIGN["RB"]:
					this._$thumbs.bind("mouseover", {elem:this}, this.showVImgTooltip);
					this._$tooltip.data("right",false).addClass("img-left");
					break;
				default:
					this._$thumbs.bind("mouseover", {elem:this}, this.showHImgTooltip);
					this._$tooltip.data("bottom",false).addClass("img-up");
			}
			this._$thumbs.bind("mouseout", {elem:this}, this.hideTooltip);
		}
		
		if (msieCheck(6)) {
			try {
				this._$tooltip.css("background-image", "none").children().css("margin",0);
			}
			catch (ex) {
			}
		}
	}
	
	//show image tooltip
	Rotator.prototype.showHImgTooltip = function(e) {
		var that = e.data.elem;
		var $img = that._$tooltip.find(">img").eq($(this).index());
		if ($img.attr("src")) {
			that._$tooltip.find(">img").hide();
			$img.show();
			if ($img[0].complete || $img[0].readyState == "complete") {	
				var yOffset = that._$tooltip.data("bottom") ? $(this).outerHeight() : -that._$tooltip.outerHeight();
				var offset = $(this).offset();
				that._$tooltip.css({top:offset.top + yOffset, left:offset.left + (($(this).outerWidth() - that._$tooltip.outerWidth())/2)})
						.stop(true, true).delay(TOOLTIP_DELAY).fadeIn(300);
			}
		}
	}
	
	//show image tooltip
	Rotator.prototype.showVImgTooltip = function(e) {
		var that = e.data.elem;
		var $img = that._$tooltip.find(">img").eq($(this).index());
		if ($img.attr("src")) {
			that._$tooltip.find(">img").hide();
			$img.show();
			if ($img[0].complete || $img[0].readyState == "complete") {
				var xOffset = that._$tooltip.data("right") ? $(this).outerWidth() : -that._$tooltip.outerWidth();
				var offset = $(this).offset();
				that._$tooltip.css({top:offset.top + (($(this).outerHeight() - that._$tooltip.outerHeight())/2), left:offset.left + xOffset})
						.stop(true, true).delay(TOOLTIP_DELAY).fadeIn(300);
			}
		}
	}
	
	//show tooltip
	Rotator.prototype.showTooltip = function(e) {
		var that = e.data.elem;
		var caption = that._$items[$(this).index()].data("caption");
		if (caption != "") {					
			that._$tooltip.find(">div.tt-txt").html(caption);
			var yOffset = that._$tooltip.data("bottom") ? 0 : -that._$tooltip.outerHeight(true);
			that._$tooltip.css({top:e.pageY + yOffset, left:e.pageX}).stop(true, true).delay(TOOLTIP_DELAY).fadeIn(300);
		}
	}
	
	//tooltip move
	Rotator.prototype.moveTooltip = function(e) {
		var that = e.data.elem;
		var yOffset = that._$tooltip.data("bottom") ? 0 : -that._$tooltip.outerHeight(true);
		that._$tooltip.css({top:e.pageY + yOffset, left:e.pageX});
	}
	
	//hide tooltip
	Rotator.prototype.hideTooltip = function(e) {
		var that = (typeof e != "undefined") ? e.data.elem : this;
		that._$tooltip.stop(true, true).hide();
	}
	
	//display control panel
	Rotator.prototype.displayCPanel = function(e) {
		var that = e.data.elem;
		var prop = {};
		prop[e.data.dir] = that._$cpanel.data("pos");
		prop["opacity"] = 1;
		that._$cpanel.stop(true).animate(prop, ANIMATE_SPEED);
	}
	
	//hide control panel
	Rotator.prototype.hideCPanel = function(e) {
		var that = e.data.elem;
		var prop = {};
		prop[e.data.dir] = that._$cpanel.data("offset");
		prop["opacity"] = 0;
		that._$cpanel.stop(true).animate(prop, ANIMATE_SPEED);
	}
	
	Rotator.prototype.showSideButtons = function(e) {
		var that = e.data.elem;
		that._$sPrev.stop(true).animate({left:0}, ANIMATE_SPEED);
		that._$sNext.stop(true).animate({"margin-left":-that._$sNext.width()}, ANIMATE_SPEED);
	}
	
	Rotator.prototype.hideSideButtons = function(e) {
		var that = e.data.elem;
		that._$sPrev.stop(true).animate({left:-that._$sPrev.width()}, ANIMATE_SPEED);
		that._$sNext.stop(true).animate({"margin-left":0}, ANIMATE_SPEED);
	}
	
	//select list item
	Rotator.prototype.selectItem = function(e) {
		var that = e.data.elem;
		var $item = $(e.target);
		if ($item[0].nodeName != "LI") {
			$item = $item.parents("li").eq(0);
		}
		var i = $item.index();
		if (i > -1 && i != that._currIndex) {	
			that._dir = i < that._currIndex ? PREV : NEXT; 
			that.resetTimer();
			that._prevIndex = that._currIndex;
			that._currIndex = i;
			that.loadContent(that._currIndex);
			that.hideTooltip();
		}
		return false;
	}
	
	//go to previous image
	Rotator.prototype.prevImg = function(e) {
		var that = (typeof e != "undefined") ? e.data.elem : this;
		that._dir = PREV;
		that.resetTimer();
		that._prevIndex = that._currIndex;
		that._currIndex = (that._currIndex > 0) ? (that._currIndex - 1) : (that._numItems - 1);
		that.loadContent(that._currIndex);
		return false;
	}
	
	//go to next image
	Rotator.prototype.nextImg = function(e) {
		var that = (typeof e != "undefined") ? e.data.elem : this;
		that._dir = NEXT;
		that.resetTimer();
		that._prevIndex = that._currIndex;
		that._currIndex = (that._currIndex < that._numItems - 1) ? (that._currIndex + 1) : 0;
		that.loadContent(that._currIndex);
		return false;
	}
	
	//play/pause
	Rotator.prototype.togglePlay = function(e) {
		var that = e.data.elem;
		that._rotate = !that._rotate;
		that._$playBtn.toggleClass("pause", that._rotate);
		that._rotate ? that.startTimer() : that.pauseTimer();
		return false;
	}
	
	//play
	Rotator.prototype.play = function(e) {
		var that = e.data.elem;
		that._rotate = true;
		that._$playBtn.addClass("pause");
		that.startTimer();
	}

	//pause
	Rotator.prototype.pause = function(e) {
		var that = e.data.elem;
		that._rotate = false;
		that._$playBtn.removeClass("pause");
		that.pauseTimer();
	}
	
	//pause on last item
	Rotator.prototype.pauseLast = function(i) {
		if (i == this._numItems - 1) {
			this._rotate = false;
			this._$playBtn.removeClass("pause");
		}
	}
	
	//update text box
	Rotator.prototype.updateText = function(e) {
		var that = e.data.elem;
		if (!that._$textBox.data("visible")) {
			that._$textBox.data("visible", true);
			var text = that._$items[that._currIndex].find(">div:first").html();
			if (text && text.length > 0) {			
				var data = that._$items[that._currIndex].data("textbox");
				that._$innerText.css("color",data.color);
				that._$textBox.find(".inner-bg").css({"background-color":data.bgcolor, height:data.h-1});
				switch(TEXT_EFFECTS[that._textEffect]) {
					case TEXT_EFFECTS["fade"]:
						that.fadeInText(text, data);
						break;
					case TEXT_EFFECTS["down"]:
						that.expandText(text, data, {width:data.w, height:0}, {height:data.h});
						break;
					case TEXT_EFFECTS["right"]:
						that.expandText(text, data, {width:0, height:data.h}, {width:data.w});
						break;
					case TEXT_EFFECTS["left"]:
						that.expandText(text, data, {"margin-left":data.w, width:0, height:data.h}, {width:data.w, "margin-left":0});
						break;
					case TEXT_EFFECTS["up"]:
						that.expandText(text, data, {"margin-top":data.h, height:0, width:data.w}, {height:data.h, "margin-top":0});
						break;
					default:
						that.showText(text, data);
				}
			}					
		}
	}
	
	//reset text box
	Rotator.prototype.resetText = function() {
		this._$textBox.data("visible", false).stop(true, true);
		switch(TEXT_EFFECTS[this._textEffect]) {
			case TEXT_EFFECTS["fade"]:
			case TEXT_EFFECTS["down"]:
			case TEXT_EFFECTS["right"]:
			case TEXT_EFFECTS["left"]:
			case TEXT_EFFECTS["up"]:
				if (jQuery.browser.msie) {
					this._$innerText.css("opacity",0);
				}
				this._$textBox.fadeOut(ANIMATE_SPEED, function() { $(this).css("display", "none"); });
				break;
			default:
				this._$textBox.css("display", "none");
		}
	}
	
	//expand text effect
	Rotator.prototype.expandText = function(text, data, props1, props2) {
		var that = this;
		this._$innerText.css("opacity",1).html("");
		this._$textBox.stop(true, true).css({display:"block", top:data.y, left:data.x, "margin-top":0, "margin-left":0}).css(props1).animate(props2, ANIMATE_SPEED, 
			function () {  
				that._$innerText.html(text);
			});  
	}
	
	//fade in text effect
	Rotator.prototype.fadeInText = function(text, data) {
		var that = this;
		this._$innerText.css("opacity",1).html(text);
		this._$textBox.css({top:data.y, left:data.x, width:data.w, height:data.h})
				.stop(true, true).fadeIn(ANIMATE_SPEED, function() {
															if (jQuery.browser.msie) {
																that._$innerText[0].style.removeAttribute('filter'); 
															}});  
	}
	
	//show text effect
	Rotator.prototype.showText = function(text, data) {
		this._$textBox.stop(true).css({display:"block", top:data.y, left:data.x, width:data.w, height:data.h});  
		this._$innerText.html(text);
	}
	
	//display text panel on mouseover
	Rotator.prototype.displayText = function(e) {
		var that = e.data.elem;
		that._$rotator.unbind(UPDATE_TEXT).bind(UPDATE_TEXT, {elem:that}, that.updateText).trigger(UPDATE_TEXT);
	}

	//hide text panel on mouseovers
	Rotator.prototype.hideText = function(e) {
		var that = e.data.elem;
		that._$rotator.unbind(UPDATE_TEXT);
		that.resetText();
	}
	
	//load current content
	Rotator.prototype.loadContent = function(i) {
		this._$rotator.trigger(UPDATE_LIST);
		if (this._playOnce) {
			this.pauseLast(i);
		}
		
		//select thumb
		this._$thumbs.filter(".curr-thumb").removeClass("curr-thumb");
		this._$thumbs.eq(i).addClass("curr-thumb");
		
		//set delay
		this._delay = this._$items[i].data("delay");
		
		//reset text
		this.resetText();
		if (!this._textSync) {
			this._$rotator.trigger(UPDATE_TEXT);
		}
		
		//set link
		if (this._$mainLink) {
			var $currLink = this._$items[i].find(">a:nth-child(2)");
			var href = $currLink.attr("href");
			if (href) {
				this._$mainLink.unbind("click", preventDefault).css("cursor", "pointer").attr({href:href, target:$currLink.attr("target")});
			}
			else {
				this._$mainLink.click(preventDefault).css("cursor", "default");
			}
		}
		
		//load image
		if (this._$items[i].data("img")) {
			this._$preloader.hide();
			this.displayContent(this._$items[i].data("img"));
		}	
		else {	
			//load new image
			var that = this;
			var $img = $("<img class='main-img'/>");
			$img.load(
				function() {
					that._$preloader.hide();
					that.storeImg(that._$items[i], $(this));
					that.displayContent($(this));
				}
			).error(
				function() {
					alert("Error loading image");
				}
			);
			this._$preloader.show();
			$img.attr("src", this._$items[i].data("imgurl"));
		}	    
	}
	
	//display content
	Rotator.prototype.displayContent = function($img) {
		//clear
		if (this._vStripeEffect) {
			this._vStripes.clear();
		}
		if (this._hStripeEffect) {
			this._hStripes.clear();
		}
		if (this._blockEffect) {
			this._blocks.clear();
		}
		if (this._vStripeEffect || this._hStripeEffect || this._blockEffect) {
			this.setPrevious();
		}
		
		//get effect number
		var effect = this._$items[this._currIndex].data("effect");
		if (effect == EFFECTS["none"] || (typeof effect == "undefined")) {
			this.showContent($img);
			return;
		}
		else if (effect == EFFECTS["fade"]) {
			this.fadeInContent($img);
			return;
		}
		else if (effect == EFFECTS["h.slide"]) {
			this.slideContent($img, "left", this._screenWidth);
			return;
		}
		else if (effect == EFFECTS["v.slide"]) {
			this.slideContent($img, "top", this._screenHeight);
			return;
		}
		
		if (effect == EFFECTS["random"]) {
			effect = Math.floor(Math.random() * (ei - 5));
		}
		
		if (effect <= EFFECTS["spiral.out"]) {
			this._blocks.displayContent($img, effect);
		}
		else if (effect <= EFFECTS["vert.random.fade"]) {
			this._vStripes.displayContent($img, effect);
		}
		else {
			this._hStripes.displayContent($img, effect);
		}
	}
	
	//set previous
	Rotator.prototype.setPrevious = function() {
		if (this._prevIndex >= 0) {
			var currSrc = this._$mainLink.find("img#curr-img").attr("src");
			var prevSrc = this._$items[this._prevIndex].data("imgurl");
			if (currSrc != prevSrc) {
				this._$mainLink.find("img.main-img").attr("id","").hide();
				var $img = this._$mainLink.find("img.main-img").filter(function() { return $(this).attr("src") == prevSrc; });
				$img.eq(0).show();
			}
		}
	}
	
	//display content (no effect)
	Rotator.prototype.showContent = function($img) {
		if (this._textSync) {
			this._$rotator.trigger(UPDATE_TEXT);
		}
		this._$mainLink.find("img.main-img").attr("id","").hide();
		$img.attr("id", "curr-img").show();
		this.startTimer();
	}
	
	//display content (fade effect)
	Rotator.prototype.fadeInContent = function($img) {
		var that = this;
		this._$mainLink.find("img#curr-img").stop(true, true);
		this._$mainLink.find("img.main-img").attr("id","").css("z-index", 0);
		$img.attr("id", "curr-img").stop(true, true).css({opacity:0,"z-index":1}).show().animate({opacity:1}, this._duration, this._easing,
			function() {
				that._$mainLink.find("img.main-img:not('#curr-img')").hide();
				if (that._textSync) {
					that._$rotator.trigger(UPDATE_TEXT);
				}
				that.startTimer();
			}
		);
	}
	
	//slide content
	Rotator.prototype.slideContent = function($currImg, pos, moveby) {
		this._$strip.stop(true,true);
		var $prevImg = $("#curr-img", this._$strip);
		if ($prevImg.size() > 0) {
			this._$strip.find(".main-img").attr("id","").parents(".content-box").css({top:0,left:0});
			$currImg.attr("id", "curr-img").parents(".content-box").show();
			var $img, dest;
			if (this._dir == PREV) {
				this._$strip.css(pos, -moveby);
				$img = $prevImg;
				dest = 0;
			}
			else {
				$img = $currImg;
				dest = -moveby;
			}
			$img.parents(".content-box").css(pos,moveby);
			var prop = (pos == "top") ? {top:dest} : {left:dest};
			var that = this;
			this._$strip.stop(true,true).animate(prop, this._duration, this._easing,
								function() {
									that._$strip.find(".main-img:not('#curr-img')").parents(".content-box").hide();
									that._$strip.find("#curr-img").parents(".content-box").show();
									$img.parents(".content-box").css({top:0,left:0});
									that._$strip.css({top:0,left:0});
									if (that._textSync) {
										that._$rotator.trigger(UPDATE_TEXT);
									}
									that.startTimer();
								});
		}
		else {
			this._$strip.css({top:0,left:0});
			this._$strip.find(".main-img").parents(".content-box").hide().css({top:0,left:0});
			$currImg.attr("id", "curr-img").parents(".content-box").show();
			if (this._textSync) {
				this._$rotator.trigger(UPDATE_TEXT);
			}
			this.startTimer();
		}
	}
	
	//load image
	Rotator.prototype.loadImg = function(loadIndex) {
		try {
			var $item = this._$items[loadIndex];
			var $img = $("<img class='main-img'/>");
			var that = this;
			$img.load(function() {
						if (!$item.data("img")) {
							that.storeImg($item, $(this));
						}
						loadIndex++
						if (loadIndex < that._numItems) {
							that.loadImg(loadIndex);
						}
					})
				.error(function() {
						//error loading image, continue next
						loadIndex++
						if (loadIndex < that._numItems) {
							that.loadImg(loadIndex);
						}
					});

			$img.attr("src", $item.data("imgurl"));
		}
		catch(ex) {}
	}
	
	//process & store image
	Rotator.prototype.storeImg = function($item, $img) {
		if (this._globalEffect == "h.slide" || this._globalEffect == "v.slide") {
			this._$strip.append($img);
			this.centerImg($img);
			var $div = $("<div class='content-box'></div>").css({width:this._screenWidth, height:this._screenHeight});
			$img.wrap($div);
			$img.css("display","block");
			var $link = $item.find(">a:nth-child(2)");
			if ($link) {
				$img.wrap($link);
			}
		}
		else {
			this._$mainLink.append($img);
			this.centerImg($img);
		}
		$item.data("img", $img);
	}
	
	//center image
	Rotator.prototype.centerImg = function($img) {
		if (this._autoCenter && $img.width() > 0 && $img.height() > 0) {
			$img.css({top:(this._screenHeight - $img.height())/2, left:(this._screenWidth  - $img.width())/2});
		}
	}
	
	//start timer
	Rotator.prototype.startTimer = function() {
		if (this._rotate && this._timerId == null) {
			var that = this;
			var duration = Math.round(this._$timer.data("pct") * this._delay);
			this._$timer.stop(true).animate({width:(this._screenWidth+1)}, duration, "linear");
			this._timerId = setTimeout(	function(e) {
											that._dir = NEXT;
											that.resetTimer();
											that._prevIndex = that._currIndex;
											that._currIndex = (that._currIndex < that._numItems - 1) ? (that._currIndex + 1) : 0;
											that.loadContent(that._currIndex);
										}, duration);
		}
	}
	
	//reset timer
	Rotator.prototype.resetTimer = function() {
		clearTimeout(this._timerId);
		this._timerId = null;
		this._$timer.stop(true).width(0).data("pct", 1);
	}
	
	//pause timer
	Rotator.prototype.pauseTimer = function() {
		clearTimeout(this._timerId);
		this._timerId = null;
		this._$timer.stop(true)
		var pct = 1 - (this._$timer.width()/(this._screenWidth+1));
		this._$timer.data("pct", pct);
	}
	
	Rotator.prototype.stopList = function(e) {
		e.data.elem._$list.stop(true);
	}
	
	//shuffle items
	Rotator.prototype.shuffleItems = function() {
		var items = this._$thumbs.toArray();
		for (var i = 0; i < this._numItems; i++) {
			var ri = Math.floor(Math.random() * this._numItems);
			var temp = items[i];
			items[i] = items[ri];
			items[ri] = temp;
		}
		
		for (var i = 0; i < this._numItems; i++) {
			this._$list.append($(items[i]));
		}
		
		this._$thumbs = this._$list.find(">li");
	}
	
	//check effect
	Rotator.prototype.checkEffect = function(num) {
		if (num == EFFECTS["random"]) {
			this._blockEffect = this._hStripeEffect = this._vStripeEffect = true;
		}
		else if (num <= EFFECTS["spiral.out"]) {
			this._blockEffect = true;
		}
		else if (num <= EFFECTS["vert.random.fade"]) {
			this._vStripeEffect = true;
		}
		else if (num <= EFFECTS["horz.random.fade"]) {
			this._hStripeEffect = true;
		}
	}
	
	//mousewheel scroll content
	Rotator.prototype.mouseScrollContent = function(e) {
		var that = e.data.elem;
		if (!that._$strip.is(":animated")) {
			var delta = (typeof e.originalEvent.wheelDelta == "undefined") ?  -e.originalEvent.detail : e.originalEvent.wheelDelta;
			delta > 0 ? that.prevImg() : that.nextImg();
		}
		return false;
	}
	
	//prevent default behavior
	function preventDefault() {
		return false;
	}
		
	//get positive number
	function getPosNumber(val, defaultVal) {
		if (!isNaN(val) && val > 0) {
			return val;
		}
		return defaultVal;
	}

	//get nonnegative number
	function getNonNegNumber(val, defaultVal) {
		if (!isNaN(val) && val >= 0) {
			return val;
		}
		return defaultVal;
	}
	
	//msie ver. check
	function msieCheck(ver) {
		if (jQuery.browser.msie && parseInt(jQuery.browser.version) <= ver) {
			return true;
		}
		return false;
	}
	
	//shuffle array
	function shuffleArray(arr) {
		var total =  arr.length;
		for (var i = 0; i < total; i++) {
			var ri = Math.floor(Math.random() * total);
			var temp = arr[i];
			arr[i] = arr[ri];
			arr[ri] = temp;
		}	
	}
		
	$.fn.wtRotator = function(params) {
		var defaults = { 
			width:825,
			height:300,			
			thumb_width:24,
			thumb_height:24,
			button_width:24,
			button_height:24,
			button_margin:4,			
			auto_start:true,
			delay:DEFAULT_DELAY,
			transition:"fade",
			transition_speed:DURATION,
			cpanel_position:INSIDE,
			cpanel_align:"BR",
			timer_align:"top",
			display_thumbs:true,
			display_side_buttons:false,
			display_dbuttons:true,
			display_playbutton:true,
			display_imgtooltip:true,
			display_numbers:true,
			display_thumbimg:false,
			display_timer:true,
			mouseover_select:false,
			mouseover_pause:false,
			cpanel_mouseover:false,
			text_mouseover:false,
			text_effect:"fade",
			text_sync:true,
			tooltip_type:"text",
			shuffle:false,
			play_once:false,
			auto_center:false,
			block_size:BLOCK_SIZE,
			vert_size:STRIPE_SIZE,
			horz_size:STRIPE_SIZE,
			block_delay:25,
			vstripe_delay:75,
			hstripe_delay:75,
			easing:"",
			mousewheel_scroll:true
		};
		
		var opts = $.extend({}, defaults, params);
		return this.each(
			function() {
				var rotator = new Rotator($(this), opts);
			}
		);
	}
})(jQuery);
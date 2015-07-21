$(document).ready(function() {
  $("ul.item__list > div").hide();
  var index = $("ul.item__list > div").attr('index');
  var count = $("ul.item__list > div:last").attr("index");
  index = parseInt(index);
  count = parseInt(count);
  console.log("index: " + index);
  console.log("count: " + count);
  $("div.item__group" + index).show();
  $("div.item__groupNum").text("Page " + index + " of " + count);


  $("a.item__prevGroup").click(function() {
    if (index > 1) {
      $("div.item__group" + index).hide();
      index -= 1;
      $("div.item__group" + index).show();
      console.log("-Num: " + index);
      $("div.item__groupNum").text("Page " + index + " of " + count);
    }
    else {
      console.log('-Num is 0');
    }
  });

  $("a.item__nextGroup").click(function() {
    if (index < count) {
      $("div.item__group" + index).hide();
      index += 1;
      $("div.item__group" + index).show();
      console.log("+Num: " + index);
      $("div.item__groupNum").text("Page " + index + " of " + count);
    }
    else {
      console.log('+Num is max');
    }
  });
});

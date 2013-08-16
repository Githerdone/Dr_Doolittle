$(function() {
  // $('.field_name').draggable();
  // var $elem = $('')
  // $('.name_field').draggable();

 $(".gridster ul").gridster({
        widget_margins: [10, 10],
        widget_base_dimensions: [140, 140]
    });

   var gridster = $(".gridster li").gridster().data('gridster');

// gridster.add_widget('<li class="new">The HTML of the widget...</li>', 2, 1);



});
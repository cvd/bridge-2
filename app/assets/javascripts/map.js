$(function(){
  if($("#map_canvas").length) {
    var map = new Bridge.Map($("#map_canvas"));
    map.render();
    map.addMarker(map.coords(), 0);
    Bridge.map = map;
  }
});

(function($){

  var Bridge = window.Bridge = {};

  var Map = Bridge.Map = function(el) {
    this.el = el;
  };
  Map.prototype = {
    render: function(){
      // var latlng = new google.maps.LatLng(-34.397, 150.644);
      var myOptions = {
        zoom: 12,
        center: this.coords(),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      this.map = new google.maps.Map(this.el[0], myOptions);
    },

    coords: function(){
      var lat = this.el.data('lat');
      var lng = this.el.data('lng');
      console.log(lat, lng);
      return new google.maps.LatLng(lat, lng);
    },

    addMarker: function(latLng, i){
      
      return new google.maps.Marker({
        position: latLng,
        map: this.map,
        icon: this.icon(i)
      });
    },
    icon: function(i){
      if(typeof i === "undefined"){
        return "http://maps.google.com/mapfiles/marker.png"
      }
      else {
        return "http://maps.google.com/mapfiles/marker" + String.fromCharCode(i + 65) + ".png"
      }
    },

    // Accepts an object that responds to #latitude & #longitude
    addObject: function(located_object){
      var ll = new google.maps.LatLng(located_object.latitude, located_object.longitude);
      this.addMarker(ll);
    },

    addObjects: function(objects){
      var that = this;
      _.each(objects, function(obj){
        if(obj.latitude && obj.longitude){
          that.addObject(obj);
        }
      });
    }
  };
}(jQuery));


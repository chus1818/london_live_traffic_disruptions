ready = ->
  handler = Gmaps.build "Google"
  handler.buildMap
    provider: {}
    internal:
      id: "map"
  , ->
    marker_data = $('#map').data('markers')
    markers = handler.addMarkers marker_data
    handler.bounds.extendWith markers
    handler.fitMapToBounds()

$(document).ready(ready)
$(document).on('page:load', ready)
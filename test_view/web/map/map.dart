import 'package:polymer/polymer.dart';
import 'package:hexacore/hexacore.dart';
import 'package:hexacore_view/hexacore_view.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('map-view')
class MapView extends PolymerElement {
  @published int count = 0;
  @published List<Field> fields = toObservable([]);
  CircleSectorView sector;

  MapView.created() : super.created() {
    sector = new CircleSectorView(2, 2, 2, 96);
    fields = toObservable(sector.fields);
    
  }
}
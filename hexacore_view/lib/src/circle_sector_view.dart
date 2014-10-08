part of hexacoreView;

class CircleSectorView extends SectorView{
  int _field_width;
  int _field_height;
  CircleSector sector;
  List<FieldView> fields = [];
  
  CircleSectorView(int centerX, int centerY, int size, this._field_width){
    _calculateFieldHeight();
    sector = new CircleSector(centerX,centerY, size);
    _createFieldViews();
  }
  
  CircleSectorView.fromExistingSector(this.sector, this._field_width){
    _calculateFieldHeight();
    _createFieldViews();
  }
  
  void _createFieldViews(){
    for(Field f in sector.fields){
      fields.add(new FieldView(f, this));
    }
  }
  
  void _calculateFieldHeight(){
    _field_height = (_field_width * 0.866025).round();
  }
  
  @override
  int getTop(int x, int y){
    return (x + y)*(_field_height/2).ceil();
  }
  
  @override
  int getLeft(int x, int y){
    return (y - x +sector.size)*(3*_field_width/4).ceil();
  }
}
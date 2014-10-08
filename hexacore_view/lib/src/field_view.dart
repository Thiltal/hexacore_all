part of hexacoreView;

class FieldView{
  int get top=>sector.getTop(field.x, field.y);
  int get left=>sector.getLeft(field.x, field.y);
  int get x=>field.x;
  int get y=>field.y;
  Field field;
  SectorView sector;
  
  
  FieldView(this.field, this.sector);
}
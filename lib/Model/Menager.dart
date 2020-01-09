
class Menager {

  int _idMenager;
  String _M_Name;
  String _M_e_mail;
  String _M_Password;
  String _M_Department;



  Menager(this._idMenager, this._M_Name, this._M_e_mail, this._M_Password,
      this._M_Department);

  String get M_Password => _M_Password;

  String get M_e_mail => _M_e_mail;

  String get M_Name => _M_Name;

  int get idMenager => _idMenager;

  String get M_Department => _M_Department;


}
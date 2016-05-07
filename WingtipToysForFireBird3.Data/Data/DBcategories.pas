namespace WingtipToysForFireBird3.Data;

interface

uses
  System,
  System.Xml,
  System.Globalization,
  System.Text,
  System.Data,
  System.Data.Common,
  System.Configuration,
  FirebirdSql.Data.FirebirdClient;

type
  DBcategories = public static class
  private
  class method connectionString: String;
  class method GetReadConnectionString: String;
  protected
  public
    class method select_categories_Categoryid_to_reader(Categoryid: System.Int64 ):IDataReader;
    class method select_categories_Categoryid_to_datatable(Categoryid: System.Int64 ):DataTable;
    class method select_categories_with_spec_clause_where_to_reader(value : System.String ):IDataReader;
    class method select_categories_with_spec_clause_where_to_datatable(value : System.String ):DataTable;
    class method insert_or_update_categories( CATEGORYID: System.Int64   ; CATEGORYNAME: System.String  ; DESCRIPTION: System.String  ):System.Int32;
end;

implementation

class method DBcategories.GetReadConnectionString: String;
begin
    exit ConfigurationManager.AppSettings['FirebirdConnectionString']
end;
class method DBcategories.connectionString: String;
begin
    if ConfigurationManager.AppSettings['FirebirdSqlWriteConnectionString'] <> nil then begin
      exit ConfigurationManager.AppSettings['FirebirdSqlWriteConnectionString']
    end;
    exit ConfigurationManager.AppSettings['FirebirdConnectionString']
end;
class method DBcategories.select_categories_Categoryid_to_reader(Categoryid: System.Int64 ):IDataReader;
begin
   var sqlCommand: StringBuilder := new StringBuilder;
   sqlCommand.Append('select  CATEGORYID, CATEGORYNAME, DESCRIPTION from categories where CATEGORYID= @CATEGORYID;');
   var arParams: array of FbParameter := new FbParameter[1];
   arParams[0] := new FbParameter('@CATEGORYID',FbDbType.BigInt);
   arParams[0].Direction := ParameterDirection.Input;
   if Categoryid <> nil then 
   arParams[0].Value := Categoryid;
   exit FBSqlHelper.ExecuteReader(connectionString, sqlCommand.ToString, arParams);
end;
class method DBcategories.select_categories_Categoryid_to_datatable(Categoryid: System.Int64 ):DataTable;
begin
   var sqlCommand: StringBuilder := new StringBuilder;
   sqlCommand.Append('select  CATEGORYID, CATEGORYNAME, DESCRIPTION from categories where CATEGORYID= @CATEGORYID;');
   var arParams: array of FbParameter := new FbParameter[1];
   arParams[0] := new FbParameter('@CATEGORYID',FbDbType.BigInt);
   arParams[0].Direction := ParameterDirection.Input;
   if Categoryid <> nil then 
   arParams[0].Value := Categoryid;
   exit FBSqlHelper.ExecuteDataTable(connectionString, sqlCommand.ToString, arParams);
end;
class method DBcategories.select_categories_with_spec_clause_where_to_reader(value : System.String ):IDataReader;
begin
   var sqlCommand: StringBuilder := new StringBuilder;
   sqlCommand.Append('select  CATEGORYID, CATEGORYNAME, DESCRIPTION from categories where '+value);
   exit FBSqlHelper.ExecuteReader(connectionString, sqlCommand.ToString);
end;
class method DBcategories.select_categories_with_spec_clause_where_to_datatable(value : System.String ):DataTable;
begin
   var sqlCommand: StringBuilder := new StringBuilder;
   sqlCommand.Append('select  CATEGORYID, CATEGORYNAME, DESCRIPTION from categories where '+value );
   exit FBSqlHelper.ExecuteDataTable(connectionString, sqlCommand.ToString);
end;

class method DBcategories.insert_or_update_categories( CATEGORYID: System.Int64   ; CATEGORYNAME: System.String  ; DESCRIPTION: System.String  ):System.Int32;
Begin
   var sqlCommand: StringBuilder := new StringBuilder;
   sqlCommand.Append('UPDATE or INSERT INTO categories ( CATEGORYID, CATEGORYNAME, DESCRIPTION)');
   sqlCommand.Append('  VALUES ( @CATEGORYID, @CATEGORYNAME, @DESCRIPTION)');
   sqlCommand.Append('  matching (CATEGORYID);');
   var arParams: array of FbParameter := new FbParameter[3];
   arParams[0] := new FbParameter('@CATEGORYID',FbDbType.BigInt);
   arParams[0].Direction := ParameterDirection.Input;
   if CATEGORYID <> nil then 
   arParams[0].Value := CATEGORYID;
   arParams[1] := new FbParameter('@CATEGORYNAME',FbDbType.VarChar, 100);
   arParams[1].Direction := ParameterDirection.Input;
   arParams[1].Charset := FbCharset.Iso8859_1 ;
   if CATEGORYNAME <> nil then 
   arParams[1].Value := CATEGORYNAME;
   arParams[2] := new FbParameter('@DESCRIPTION',FbDbType.VarChar, 8000);
   arParams[2].Direction := ParameterDirection.Input;
   arParams[2].Charset := FbCharset.Iso8859_1 ;
   if DESCRIPTION <> nil then 
   arParams[2].Value := DESCRIPTION;
   var rowsAffected: System.Int32 := FBSqlHelper.ExecuteNonQuery(connectionString, sqlCommand.ToString(), arParams);
   exit rowsAffected;
end;
end.

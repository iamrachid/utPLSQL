create or replace package ut_curr_usr_compound_helper authid current_user is
   
  function is_sql_compare_allowed(a_type_name varchar2) return boolean;
  
  function is_sql_compare_int(a_type_name varchar2) return integer;
  
  procedure get_columns_info(
    a_cursor in out nocopy sys_refcursor,
    a_columns_info out nocopy xmltype,
    a_join_by_info out nocopy xmltype,
    a_contains_collection out nocopy number,
    a_is_sql_diffable out nocopy number
  );

  function get_user_defined_type(a_owner varchar2, a_type_name varchar2) return xmltype;
  
end;
/

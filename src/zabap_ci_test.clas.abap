class ZABAP_CI_TEST definition
  public
  final
  create public .

public section.

  methods REMIND
    importing
      !IV_DIVIDEND type I
      !IV_DIVISOR type I
    returning
      value(RV_RETURN) type I .
  methods ADD_ONE
    importing
      !IV_NUM type I
    returning
      value(RV_RETURN) type I .
protected section.
private section.
ENDCLASS.



CLASS ZABAP_CI_TEST IMPLEMENTATION.


  method ADD_ONE.
    rv_return  = iv_num + 1.
  endmethod.


  method REMIND.
    rv_return = 1.
  endmethod.
ENDCLASS.

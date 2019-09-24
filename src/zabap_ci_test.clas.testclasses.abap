
class zabap_Ci_Test_Ut definition for testing
  duration short
  risk level harmless
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>zabap_Ci_Test_Ut
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZABAP_CI_TEST
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION/>
*?<GENERATE_ASSERT_EQUAL/>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  private section.
    data:
      f_Cut type ref to zabap_Ci_Test.  "class under test

    methods: add_One for testing.
endclass.       "zabap_Ci_Test_Ut


class zabap_Ci_Test_Ut implementation.

  method add_One.
    f_cut = NEW zabap_ci_test( ).

    DATA(rv_value) = f_cut->add_one( 2 ).

    cl_aunit_assert=>assert_equals( act = 3 exp = rv_value ).

  endmethod.




endclass.

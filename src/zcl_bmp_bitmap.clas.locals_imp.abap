*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_conversion_helper IMPLEMENTATION.

  METHOD int4_to_hex_in_little_endian.
    FIELD-SYMBOLS <x4> LIKE r_result.

    ASSIGN i_number TO <x4> CASTING.
    IF cl_abap_char_utilities=>endian = 'L'.
      r_result = <x4>.
    ELSE.
      r_result+0(1) = <x4>+3(1).
      r_result+1(1) = <x4>+2(1).
      r_result+2(1) = <x4>+1(1).
      r_result+3(1) = <x4>+0(1).
    ENDIF.
  ENDMETHOD.

ENDCLASS.

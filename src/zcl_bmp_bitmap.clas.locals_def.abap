*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
CLASS lcl_conversion_helper DEFINITION CREATE PRIVATE.
  PUBLIC SECTION.
    TYPES: ty_x4 TYPE x LENGTH 4.

    CLASS-METHODS: int4_to_hex_in_little_endian IMPORTING i_number        TYPE int4
                                                RETURNING VALUE(r_result) TYPE ty_x4.

ENDCLASS.
